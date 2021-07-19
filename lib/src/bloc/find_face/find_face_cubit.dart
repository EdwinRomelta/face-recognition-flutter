import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:face_recognition_flutter/src/bloc/utilities/face_utils.dart';
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
      _image = FaceUtils.cropFace(availableImage, faceList.first);
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

}
