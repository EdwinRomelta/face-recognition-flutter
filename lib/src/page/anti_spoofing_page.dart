import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/bloc/anti_spoofing/anti_spoofing_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AntiSpoofingPage extends StatelessWidget implements AutoRouteWrapper {
  final Uint8List faceImage;

  AntiSpoofingPage(this.faceImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anti Spoofing'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Image.memory(
              faceImage,
            ),
          ),
          Center(
            child: BlocBuilder<AntiSpoofingCubit, AntiSpoofingState>(
              builder: (context, state) {
                return state.maybeWhen(
                    success: (laplacian, liveness, isFraud) => Text(
                        'clarity : $laplacian\nliveness : $liveness\nfraud : $isFraud'),
                    orElse: () => CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AntiSpoofingCubit>(
      create: (_) => injector.get()..check(faceImage),
      child: this,
    );
  }
}
