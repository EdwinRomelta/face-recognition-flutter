import 'package:face_recognition_flutter/src/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class FaceRecognitionApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
}