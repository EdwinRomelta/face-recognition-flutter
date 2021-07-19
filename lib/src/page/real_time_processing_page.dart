import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:face_recognition_flutter/src/bloc/face_processing/face_processing_cubit.dart';
import 'package:face_recognition_flutter/src/injector/injector.dart';
import 'package:face_recognition_flutter/src/model/detected_face.dart';
import 'package:face_recognition_flutter/src/widget/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RealTimeProcessingPage extends StatefulWidget
    implements AutoRouteWrapper {
  @override
  _RealTimeProcessingPageState createState() => _RealTimeProcessingPageState();

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider<FaceProcessingCubit>(
        create: (_) => injector.get(),
        child: this,
      );
}

class _RealTimeProcessingPageState extends State<RealTimeProcessingPage> {
  Size? _size;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<FaceProcessingCubit, FaceProcessingState>(
          builder: (context, state) => CustomPaint(
            foregroundPainter: _FaceDetectorPainter(
              _size,
              state is FaceProcessingFound ? state.faceList : [],
            ),
            child: Camera(
              onImageAvailable: (image) =>
                  BlocProvider.of<FaceProcessingCubit>(context)
                      .checkFace(image),
              onSizeAvailable: (size) => setState(() => _size = size),
              resolutionPreset: ResolutionPreset.low,
            ),
          ),
        ),
      );
}

class _FaceDetectorPainter extends CustomPainter {
  final List<DetectedFace> results;
  final Size? _imageSize;
  final Paint _paint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3.0;

  _FaceDetectorPainter(this._imageSize, this.results);

  @override
  void paint(Canvas canvas, Size size) {
    final imageSize = _imageSize;
    if (imageSize == null) return;
    final _scaleX = size.width / imageSize.height;
    final _scaleY = size.height / imageSize.width;
    for (DetectedFace face in results) {
      final isFraud = face.isFraud;
      final _color = isFraud != null
          ? (isFraud ? Colors.red : Colors.green)
          : Colors.yellow;
      canvas.drawRRect(
        _scaleRect(
            rect: face.boundingBox,
            imageSize: imageSize,
            widgetSize: size,
            scaleX: _scaleX,
            scaleY: _scaleY),
        _paint..color = _color,
      );
      final _label = face.label;
      if(_label != null) {
        final label = StringBuffer(_label);
        final probability = face.probability;
        if (probability != null) {
          label.write(' ${probability.toStringAsFixed(2)}');
        }
        final span =
        TextSpan(style: TextStyle(color: _color, fontSize: 24),
            text: label.toString());
        final textPainter = TextPainter(
            text: span,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr);
        textPainter.layout();
        textPainter.paint(
            canvas,
            Offset(
                (size.width -
                    (face.boundingBox.right.toDouble() - 4) * _scaleX),
                (face.boundingBox.top.toDouble() - 10) * _scaleY));
      }
    }
  }

  RRect _scaleRect(
          {required Rect rect,
          required Size imageSize,
          required Size widgetSize,
          double scaleX = 1.0,
          double scaleY = 1.0}) =>
      RRect.fromLTRBR(
          (widgetSize.width - rect.left.toDouble() * scaleX),
          rect.top.toDouble() * scaleY,
          widgetSize.width - rect.right.toDouble() * scaleX,
          rect.bottom.toDouble() * scaleY,
          Radius.circular(10));

  @override
  bool shouldRepaint(_FaceDetectorPainter oldDelegate) =>
      oldDelegate.results != results;
}
