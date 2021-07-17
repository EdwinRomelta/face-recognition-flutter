part of 'anti_spoofing_cubit.dart';

@freezed
class AntiSpoofingState with _$AntiSpoofingState {
  const factory AntiSpoofingState.initial() = _AntiSpoofingStateInitial;

  const factory AntiSpoofingState.failed() = _AntiSpoofingStateFailed;

  const factory AntiSpoofingState.success(
    int laplacian,
    double liveness,
    bool isFraud,
  ) = _AntiSpoofingStateSuccess;
}
