import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/bloc/compare_face/compare_face_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComparePage extends StatelessWidget implements AutoRouteWrapper {
  final Uint8List faceImage;

  ComparePage(this.faceImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compare Face'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Image.memory(
              faceImage,
            ),
          ),
          Expanded(
            child: BlocBuilder<CompareFaceCubit, CompareFaceState>(
              builder: (context, state) {
                return state.maybeWhen(
                    success: (comparedFaceList) => ListView.builder(
                        itemCount: comparedFaceList.length,
                        itemBuilder: (context, index) {
                          final item = comparedFaceList[index];
                          return ListTile(
                            leading: Image.file(File(item.path)),
                            title: Text(item.label),
                            subtitle: Text('${item.probability} %'),
                          );
                        }),
                    orElse: () => Center(
                          child: CircularProgressIndicator(),
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CompareFaceCubit>(
      create: (_) => injector.get()..compare(faceImage),
      child: this,
    );
  }
}
