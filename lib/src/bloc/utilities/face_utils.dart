
import 'package:camera/camera.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image/image.dart' as imglib;
class FaceUtils  {

  static imglib.Image cropFace(CameraImage image, Face faceDetected) {
    final convertedImage = _convertCameraImage(image);
    final x = faceDetected.boundingBox.left - 10.0;
    final y = faceDetected.boundingBox.top - 10.0;
    final w = faceDetected.boundingBox.width + 10.0;
    final h = faceDetected.boundingBox.height + 10.0;
    return imglib.copyCrop(
        convertedImage, x.round(), y.round(), w.round(), h.round());
  }

  static imglib.Image _convertCameraImage(CameraImage image) {
    final width = image.width;
    final height = image.height;
    var img = imglib.Image(width, height);
    const hexFF = 0xFF000000;
    final uvyButtonStride = image.planes[1].bytesPerRow;
    final uvPixelStride = image.planes[1].bytesPerPixel ?? 0;
    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        final uvIndex =
            uvPixelStride * (x / 2).floor() + uvyButtonStride * (y / 2).floor();
        final index = y * width + x;
        final yp = image.planes[0].bytes[index];
        final up = image.planes[1].bytes[uvIndex];
        final vp = image.planes[2].bytes[uvIndex];
        final r = (yp + vp * 1436 / 1024 - 179).round().clamp(0, 255);
        final g = (yp - up * 46549 / 131072 + 44 - vp * 93604 / 131072 + 91)
            .round()
            .clamp(0, 255);
        final b = (yp + up * 1814 / 1024 - 227).round().clamp(0, 255);
        img.data[index] = hexFF | (b << 16) | (g << 8) | r;
      }
    }
    var img1 = imglib.copyRotate(img, -90);
    return img1;
  }
}
