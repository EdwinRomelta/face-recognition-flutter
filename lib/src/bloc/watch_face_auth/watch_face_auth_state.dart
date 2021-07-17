part of 'watch_face_auth_cubit.dart';

@freezed
class WatchFaceAuthState with _$WatchFaceAuthState {
  const factory WatchFaceAuthState.initial() = _WatchFaceAuthStateInitial;

  const factory WatchFaceAuthState.success(List<FaceAuth> faceList) =
      WatchFaceAuthStateSuccess;
}
