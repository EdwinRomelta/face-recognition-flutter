import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:face_recognition_flutter/src/service/face_anti_spoofing_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';

part 'anti_spoofing_cubit.freezed.dart';

part 'anti_spoofing_state.dart';

@injectable
class AntiSpoofingCubit extends Cubit<AntiSpoofingState> {
  final FaceAntiSpoofingService _faceAntiSpoofingService;

  AntiSpoofingCubit(this._faceAntiSpoofingService)
      : super(AntiSpoofingState.initial());

  void check(Uint8List faceImage) async {
    final image = imglib.decodeImage(List.from(faceImage));
    if (image == null) return emit(AntiSpoofingState.failed());
    try {
      final laplacian = _faceAntiSpoofingService.laplacian(image);
      final antiSpoofing = _faceAntiSpoofingService.antiSpoofing(image);
      emit(AntiSpoofingState.success(
          laplacian, antiSpoofing, (laplacian < 1000 || antiSpoofing >= 0.2)));
    } catch (e) {
      emit(AntiSpoofingState.failed());
    }
  }
}
