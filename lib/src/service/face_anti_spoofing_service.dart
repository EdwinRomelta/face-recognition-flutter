import 'dart:typed_data';

import 'package:face_recognition_flutter/src/utilities/interpreter_utils.dart';
import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

const _laplaceThreshold = 50;

@singleton
class FaceAntiSpoofingService {
  static const clearnessThreshold = 1000;
  static const livenessThreshold = 0.2;

  @factoryMethod
  static Future<FaceAntiSpoofingService> create() async {
    final interpreter = await Interpreter.fromAsset('FaceAntiSpoofing.tflite');
    return FaceAntiSpoofingService._(interpreter);
  }

  final Interpreter _interpreter;

  FaceAntiSpoofingService._(this._interpreter);

  int laplacian(imglib.Image image) {
    var img = imglib.copyResizeCropSquare(image, 256);
    img = imglib.grayscale(img);
    var laplace = [
      [0, 1, 0],
      [1, -4, 1],
      [0, 1, 0]
    ];
    int size = laplace.length;
    int score = 0;
    for (int x = 0; x < 256 - size + 1; x++) {
      for (int y = 0; y < 256 - size + 1; y++) {
        int result = 0;
        for (int i = 0; i < size; i++) {
          for (int j = 0; j < size; j++) {
            var color = img.getPixel(x + i, y + j);
            var pixel = imglib.getRed(color);
            result += (pixel & 0xFF) * laplace[i][j];
          }
        }
        if (result > _laplaceThreshold) {
          score++;
        }
      }
    }
    return score;
  }

  Future<bool> antiSpoofing(imglib.Image image) async {
    final clearness = laplacian(image);
    if (clearness < FaceAntiSpoofingService.clearnessThreshold) return true;
    final antiSpoofing = await liveness(image);
    if (antiSpoofing > FaceAntiSpoofingService.livenessThreshold) return true;
    return false;
  }

  Future<double> liveness(imglib.Image image) async {
    var input = _preProcess(image);
    input = input.reshape([1, 256, 256, 3]);
    var output = <int, Object>{};
    List clssPred = List.filled(1 * 8, 0.0).reshape([1, 8]);
    List leafNodeMask = List.filled(1 * 8, 0.0).reshape([1, 8]);
    output[_interpreter.getOutputIndex("Identity")] = clssPred;
    output[_interpreter.getOutputIndex("Identity_1")] = leafNodeMask;
    output = await _interpreter.runForMultipleInputsCompute([input], output);
    return _leafScore(clssPred, leafNodeMask);
  }

  double _leafScore(List clssPred, List leafNodeMask) {
    var score = 0.0;
    for (int i = 0; i < 8; i++) {
      score += ((clssPred[0][i] * leafNodeMask[0][i]) as double).abs();
    }
    return score;
  }

  List _preProcess(imglib.Image image) {
    final img = imglib.copyResizeCropSquare(image, 256);
    final imageAsList = _imageToByteListFloat32(img);
    return imageAsList;
  }

  Float32List _imageToByteListFloat32(imglib.Image image) {
    var convertedBytes = Float32List(1 * 256 * 256 * 3);
    var buffer = Float32List.view(convertedBytes.buffer);
    var pixelIndex = 0;
    for (var i = 0; i < 256; i++) {
      for (var j = 0; j < 256; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = imglib.getRed(pixel) / 255;
        buffer[pixelIndex++] = imglib.getGreen(pixel) / 255;
        buffer[pixelIndex++] = imglib.getBlue(pixel) / 255;
      }
    }
    return convertedBytes.buffer.asFloat32List();
  }
}
