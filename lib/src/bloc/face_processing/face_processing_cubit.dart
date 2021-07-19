import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:face_recognition_flutter/src/bloc/utilities/face_utils.dart';
import 'package:face_recognition_flutter/src/model/detected_face.dart';
import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/face_auth_repository.dart';
import 'package:face_recognition_flutter/src/service/face_anti_spoofing_service.dart';
import 'package:face_recognition_flutter/src/service/mobile_face_net_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:injectable/injectable.dart';

part 'face_processing_cubit.freezed.dart';

part 'face_processing_state.dart';

@injectable
class FaceProcessingCubit extends Cubit<FaceProcessingState> {
  final FaceAuthRepository _faceAuthRepository;
  final MobileFaceNetService _mobileFaceNetService;
  final FaceAntiSpoofingService _faceAntiSpoofingService;
  final _faceDetector =
      GoogleMlKit.vision.faceDetector(const FaceDetectorOptions(
    enableTracking: true,
  ));
  final _detectedMap = Map<int, DetectedFace>();
  late final StreamSubscription<List<FaceAuth>> _streamSubscription;
  bool _isComputing = false;
  final List<FaceAuth> _faceAuthList = List.empty(growable: true);
  Future<void>? _processFuture;

  FaceProcessingCubit(
    this._faceAuthRepository,
    this._mobileFaceNetService,
    this._faceAntiSpoofingService,
  ) : super(FaceProcessingState.initial()) {
    _streamSubscription = _faceAuthRepository.watchAll().listen((event) {
      _faceAuthList.clear();
      _faceAuthList.addAll(event);
    });
  }

  void checkFace(CameraImage availableImage) async {
    if (_isComputing) return;
    _isComputing = true;
    try {
      final faceList = await _findFace(availableImage);
      final trackerIdList = faceList.map((face) {
        final trackingId = face.trackingId;
        if (trackingId != null) {
          final detectedFace = _detectedMap[trackingId];
          if (detectedFace == null) {
            _detectedMap[trackingId] = DetectedFace(
              trackingId: trackingId,
              boundingBox: face.boundingBox,
            );
          } else {
            _detectedMap[trackingId] =
                detectedFace.copyWith(boundingBox: face.boundingBox);
          }
        }
        return trackingId;
      }).whereNotNull();
      _processFuture ??= _processFace(availableImage, faceList);
      emit(FaceProcessingState.faceFound(_detectedMap.values
          .where(
              (detectedFace) => trackerIdList.contains(detectedFace.trackingId))
          .toList(growable: false)));
    } catch (e) {
      debugPrint(e.toString());
    }
    _isComputing = false;
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }

  Future<void> _processFace(
      CameraImage availableImage, List<Face> faceList) async {
    try {
      final faceAuthList = _faceAuthList;
      for (var face in faceList) {
        final trackingId = face.trackingId;
        if (trackingId != null) {
          String label = 'Unknown';
          double? probability;
          final croppedFace = FaceUtils.cropFace(availableImage, face);
          if (faceAuthList.isNotEmpty) {
            List<double> metadata =
                await _mobileFaceNetService.process(croppedFace);
            var currentProbability = 0.0;
            for (var faceAuth in faceAuthList) {
              final computedProbability =
                  _mobileFaceNetService.compare(metadata, faceAuth.metadata);
              if (currentProbability < computedProbability &&
                  computedProbability > 0.80) {
                probability = computedProbability;
                label = faceAuth.label;
              }
            }
          }
          final detectedFace = _detectedMap[trackingId];
          if (detectedFace == null) {
            _detectedMap[trackingId] = DetectedFace(
              trackingId: trackingId,
              boundingBox: face.boundingBox,
              label: label,
              probability: probability,
            );
          } else {
            _detectedMap[trackingId] = detectedFace.copyWith(
              label: label,
              probability: probability,
            );
          }
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _processFuture = null;
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
