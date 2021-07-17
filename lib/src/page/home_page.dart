import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/bloc/watch_face_auth/watch_face_auth_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:face_recognition_flutter/src/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face Recognition'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: BlocBuilder<WatchFaceAuthCubit, WatchFaceAuthState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => AutoRouter.of(context)
                        .push(CameraRoute(onFaceAvailable: (croppedFace) async {
                      final isRegistered = await AutoRouter.of(context)
                          .push(CreateFaceAuthRoute(croppedFace: croppedFace));
                      if (isRegistered == true) {
                        AutoRouter.of(context).pop(true);
                      }
                    })),
                    child: Text('Register Face'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: state is WatchFaceAuthStateSuccess &&
                            state.faceList.isNotEmpty
                        ? () => AutoRouter.of(context).push(CameraRoute(
                                onFaceAvailable: (croppedFace) async {
                              await AutoRouter.of(context)
                                  .push(CompareRoute(faceImage: croppedFace));
                            }))
                        : null,
                    child: Text('Compare Face'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:  () => AutoRouter.of(context).push(CameraRoute(
                                onFaceAvailable: (croppedFace) async {
                              await AutoRouter.of(context).push(
                                  AntiSpoofingRoute(faceImage: croppedFace));
                            })),
                    child: Text('Anti Spoofing Face'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<WatchFaceAuthCubit>(
        create: (_) => injector.get(),
        child: this,
      );
}
