import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/face_auth_repository.dart';
import 'package:face_recognition_flutter/src/service/mobile_face_net_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as imglib;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

part 'create_face_auth_cubit.freezed.dart';

part 'create_face_auth_state.dart';

@injectable
class CreateFaceAuthCubit extends Cubit<CreateFaceAuthState> {
  final FaceAuthRepository _faceAuthRepository;
  final MobileFaceNetService _mobileFaceNetService;

  CreateFaceAuthCubit(this._faceAuthRepository, this._mobileFaceNetService)
      : super(CreateFaceAuthState.waitingForLabel());

  void createFaceAuth(Uint8List imageData, String label) async {
    final image = imglib.decodeImage(List.from(imageData));
    if (image == null) return emit(CreateFaceAuthState.failed());
    try {
      List<double> metadata = await _mobileFaceNetService.process(image);
      final appDir = await getApplicationSupportDirectory();
      final faceDir =
          await Directory('${appDir.path}/face').create(recursive: true);
      final String filePath = '${faceDir.path}/$label.jpg';
      File(filePath).writeAsBytes(imglib.encodePng(image));
      final faceAuth = FaceAuth(
        label: label,
        metadata: metadata,
        path: filePath,
      );
      await _faceAuthRepository.save(faceAuth);
      emit(CreateFaceAuthState.success());
    } catch (e) {
      emit(CreateFaceAuthState.failed());
    }
  }
}
