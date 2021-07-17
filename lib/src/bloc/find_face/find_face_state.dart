part of 'find_face_cubit.dart';

@freezed
class FindFaceState with _$FindFaceState {
  const factory FindFaceState.initial() = _FindFaceInitial;

  const factory FindFaceState.waitingForSubmit(List<Face> faceList) =
      FindFaceWaitingForSubmit;

  const factory FindFaceState.success(Uint8List croppedFace) = FindFaceSuccess;
}
