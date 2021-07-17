import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/face_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'watch_face_auth_cubit.freezed.dart';

part 'watch_face_auth_state.dart';

@injectable
class WatchFaceAuthCubit extends Cubit<WatchFaceAuthState> {
  late final StreamSubscription<List<FaceAuth>> _streamSubscription;

  WatchFaceAuthCubit(FaceAuthRepository _faceAuthRepository)
      : super(WatchFaceAuthState.initial()) {
    _streamSubscription = _faceAuthRepository.watchAll().listen((faceList) {
      emit(WatchFaceAuthState.success(faceList));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
