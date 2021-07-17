import 'package:face_recognition_flutter/src/face_recognition_app.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:flutter/material.dart';

void main() {
  configInjector();
  runApp(FaceRecognitionApp());
}
