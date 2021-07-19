part of 'face_processing_cubit.dart';

@freezed
class FaceProcessingState with _$FaceProcessingState {
  const factory FaceProcessingState.initial() = _FaceProcessingInitial;

  const factory FaceProcessingState.faceFound(List<DetectedFace> faceList) = FaceProcessingFound;
}
