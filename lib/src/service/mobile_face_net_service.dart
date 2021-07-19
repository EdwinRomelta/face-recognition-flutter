import 'dart:math';
import 'dart:typed_data';

import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

@singleton
class MobileFaceNetService {
  @factoryMethod
  static Future<MobileFaceNetService> create() async {
    final interpreterOptions = InterpreterOptions();
    interpreterOptions.threads = 4;
    interpreterOptions.useNnApiForAndroid = true;
    interpreterOptions.useMetalDelegateForIOS = true;
    final interpreter = await Interpreter.fromAsset(
      'MobileFaceNet.tflite',
      options: interpreterOptions,
    );
    return MobileFaceNetService._(interpreter);
  }

  final Interpreter _interpreter;

  MobileFaceNetService._(this._interpreter);

  List<double> process(imglib.Image image) {
    var input = _preProcess(image);
    input = input.reshape([1, 112, 112, 3]);
    var output = List.filled(1 * 192, 0.0).reshape([1, 192]);
    _interpreter.run(input, output);
    return List.from(output.reshape([192]));
  }

  double compare(
    List<double> metadata,
    List<double> comparedMetadata,
  ) {
    var sum = 0.0;
    for (var i = 0; i < comparedMetadata.length; i++) {
      sum += pow((metadata[i] - comparedMetadata[i]), 2);
    }
    var confidance = 0.0;
    for (var i = 0; i < 400; i++) {
      var threshold = 0.01 * (i + 1);
      if (sum < threshold) {
        confidance += 1.0 / 400;
      }
    }
    return confidance;
  }

  List _preProcess(imglib.Image image) {
    final img = imglib.copyResizeCropSquare(image, 112);
    final imageAsList = _imageToByteListFloat32(img);
    return imageAsList;
  }

  Float32List _imageToByteListFloat32(imglib.Image image) {
    var convertedBytes = Float32List(1 * 112 * 112 * 3);
    var buffer = Float32List.view(convertedBytes.buffer);
    var pixelIndex = 0;
    for (var i = 0; i < 112; i++) {
      for (var j = 0; j < 112; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = (imglib.getRed(pixel) - 128) / 128;
        buffer[pixelIndex++] = (imglib.getGreen(pixel) - 128) / 128;
        buffer[pixelIndex++] = (imglib.getBlue(pixel) - 128) / 128;
      }
    }
    return convertedBytes.buffer.asFloat32List();
  }
}
