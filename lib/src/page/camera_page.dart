import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/bloc/find_face/find_face_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:face_recognition_flutter/src/router/app_router.gr.dart';
import 'package:face_recognition_flutter/src/widget/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moor/moor.dart';

typedef OnFaceAvailable = void Function(Uint8List croppedFace);

class CameraPage extends StatefulWidget implements AutoRouteWrapper {

  final OnFaceAvailable onFaceAvailable;

  CameraPage(this.onFaceAvailable);

  @override
  _CameraPageState createState() => _CameraPageState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<FindFaceCubit>(
        create: (_) => injector.get(),
        child: this,
      );
}

class _CameraPageState extends State<CameraPage> {
  bool _isOneShotCapture = false;

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<FindFaceCubit, FindFaceState>(
        listener: (context, state) => state.maybeWhen(
          success: widget.onFaceAvailable,
          orElse: () {},
        ),
        builder: (context, state) => Scaffold(
          body: Camera(
            onImageAvailable: (image) {
              if (_isOneShotCapture) {
                BlocProvider.of<FindFaceCubit>(context).cropFace(image);
                _isOneShotCapture = false;
              } else {
                BlocProvider.of<FindFaceCubit>(context).checkFace(image);
              }
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed:
                (state is FindFaceWaitingForSubmit && state.faceList.isNotEmpty)
                    ? _takePhoto
                    : null,
            child: Icon(Icons.camera),
          ),
        ),
      );

  void _takePhoto() async {
    HapticFeedback.mediumImpact();
    _isOneShotCapture = true;
  }
}
