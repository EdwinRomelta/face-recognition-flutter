import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:face_recognition_flutter/src/model/compared_face.dart';
import 'package:face_recognition_flutter/src/repository/face_auth_repository.dart';
import 'package:face_recognition_flutter/src/service/mobile_face_net_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';

part 'compare_face_cubit.freezed.dart';

part 'compare_face_state.dart';

@injectable
class CompareFaceCubit extends Cubit<CompareFaceState> {
  final FaceAuthRepository _faceAuthRepository;
  final MobileFaceNetService _mobileFaceNetService;

  CompareFaceCubit(this._faceAuthRepository, this._mobileFaceNetService)
      : super(CompareFaceState.initial());

  void compare(Uint8List faceImage) async {
    final image = imglib.decodeImage(List.from(faceImage));
    if (image == null) return emit(CompareFaceState.failed());
    try {
      final faceMetadata = await _mobileFaceNetService.process(image);
      final faceList = await _faceAuthRepository.watchAll().first;
      emit(CompareFaceState.success(faceList
          .map((faceAuth) {
            final probability =
                _mobileFaceNetService.compare(faceMetadata, faceAuth.metadata) *
                    100;
            return ComparedFace(
              label: faceAuth.label,
              path: faceAuth.path,
              probability: probability.toStringAsFixed(
                  probability.truncateToDouble() == probability ? 0 : 2),
            );
          })
          .sorted((first, second) =>
              second.probability.compareTo(first.probability))
          .toList(growable: false)));
    } catch (e) {
      emit(CompareFaceState.failed());
    }
  }
}
