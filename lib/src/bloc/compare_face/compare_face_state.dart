part of 'compare_face_cubit.dart';

@freezed
class CompareFaceState with _$CompareFaceState {
  const factory CompareFaceState.initial() = _CompareFaceStateInitial;

  const factory CompareFaceState.inProgress() = _CompareFaceStateInProgress;

  const factory CompareFaceState.failed() =
      _CompareFaceStateFailed;

  const factory CompareFaceState.success(List<ComparedFace> comparedFaceList) =
      _CompareFaceStateSuccess;
}
