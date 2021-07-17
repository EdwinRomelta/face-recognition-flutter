part of 'create_face_auth_cubit.dart';

@freezed
class CreateFaceAuthState with _$CreateFaceAuthState {
  const factory CreateFaceAuthState.waitingForLabel() =
      _CreateFaceAuthStateWaitingForLabel;

  const factory CreateFaceAuthState.failed() = _CreateFaceAuthStateFailed;

  const factory CreateFaceAuthState.success() = _CreateFaceAuthStateSuccess;
}
