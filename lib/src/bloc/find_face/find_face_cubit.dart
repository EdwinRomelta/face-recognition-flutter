import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/face_auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

part 'find_face_cubit.freezed.dart';

part 'find_face_state.dart';

@injectable
class FindFaceCubit extends Cubit<FindFaceState> {
  final _faceDetector = GoogleMlKit.vision.faceDetector();
  final _pngEncoder = imglib.PngEncoder(level: 0, filter: 0);
  late imglib.Image _image;
  bool _isComputing = false;

  FindFaceCubit() : super(FindFaceState.initial()) ;

  void checkFace(CameraImage availableImage) async {
    if (_isComputing) return;
    _isComputing = true;
    try {
      final faceList = await _findFace(availableImage);
      emit(FindFaceState.waitingForSubmit(faceList));
    } catch (e) {
      debugPrint(e.toString());
    }
    _isComputing = false;
  }

  void cropFace(CameraImage availableImage) async {
    try {
      final faceList = await _findFace(availableImage);
      _image = _cropFace(availableImage, faceList.first);
      emit(FindFaceState.success(
          Uint8List.fromList(_pngEncoder.encodeImage(_image))));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<Face>> _findFace(CameraImage availableImage) async {
    final allBytes = WriteBuffer();
    availableImage.planes
        .forEach((Plane plane) => allBytes.putUint8List(plane.bytes));
    final inputImage = InputImage.fromBytes(
        bytes: allBytes.done().buffer.asUint8List(),
        inputImageData: InputImageData(
          inputImageFormat: InputImageFormat.YUV420,
          size: Size(availableImage.width.toDouble(),
              availableImage.height.toDouble()),
          imageRotation: InputImageRotation.Rotation_270deg,
          planeData: availableImage.planes.map(
            (Plane plane) {
              return InputImagePlaneMetadata(
                bytesPerRow: plane.bytesPerRow,
                height: plane.height,
                width: plane.width,
              );
            },
          ).toList(),
        ));
    return await _faceDetector.processImage(inputImage);
  }

  imglib.Image _cropFace(CameraImage image, Face faceDetected) {
    final convertedImage = _convertCameraImage(image);
    final x = faceDetected.boundingBox.left - 10.0;
    final y = faceDetected.boundingBox.top - 10.0;
    final w = faceDetected.boundingBox.width + 10.0;
    final h = faceDetected.boundingBox.height + 10.0;
    return imglib.copyCrop(
        convertedImage, x.round(), y.round(), w.round(), h.round());
  }

  imglib.Image _convertCameraImage(CameraImage image) {
    final width = image.width;
    final height = image.height;
    var img = imglib.Image(width, height);
    const hexFF = 0xFF000000;
    final uvyButtonStride = image.planes[1].bytesPerRow;
    final uvPixelStride = image.planes[1].bytesPerPixel ?? 0;
    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        final uvIndex =
            uvPixelStride * (x / 2).floor() + uvyButtonStride * (y / 2).floor();
        final index = y * width + x;
        final yp = image.planes[0].bytes[index];
        final up = image.planes[1].bytes[uvIndex];
        final vp = image.planes[2].bytes[uvIndex];
        final r = (yp + vp * 1436 / 1024 - 179).round().clamp(0, 255);
        final g = (yp - up * 46549 / 131072 + 44 - vp * 93604 / 131072 + 91)
            .round()
            .clamp(0, 255);
        final b = (yp + up * 1814 / 1024 - 227).round().clamp(0, 255);
        img.data[index] = hexFF | (b << 16) | (g << 8) | r;
      }
    }
    var img1 = imglib.copyRotate(img, -90);
    return img1;
  }
}
