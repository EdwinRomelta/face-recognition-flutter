import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget with WidgetsBindingObserver {
  final onLatestImageAvailable? onImageAvailable;
  final void Function(Size? cameraPreviewSize)? onSizeAvailable;
  final ResolutionPreset resolutionPreset;

  Camera({
    this.onImageAvailable,
    this.onSizeAvailable,
    this.resolutionPreset = ResolutionPreset.high,
  });

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> with WidgetsBindingObserver {
  late List<CameraDescription> _cameras;
  CameraController? _controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _startCamera();
  }

  @override
  Widget build(BuildContext context) {
    final _controller = this._controller;
    if (_controller == null || !_controller.value.isInitialized) {
      return Center(child: Text('Need camera permission to use camera'));
    }
    final size = MediaQuery.of(context).size;
    var scale = size.aspectRatio * _controller.value.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return Transform.scale(
      scale: scale,
      child: Center(
        child: CameraPreview(_controller),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final cameraController = _controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      cameraController.stopImageStream();
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCameraController(cameraController.description);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  void _startCamera() => availableCameras().then((availableCameras) {
        _cameras = availableCameras;
        if (_cameras.isNotEmpty) {
          final cameraId = _cameras.indexWhere((cameraDescription) =>
              cameraDescription.lensDirection == CameraLensDirection.front);
          setState(() {});
          _initCameraController(_cameras[cameraId]).then((void v) {});
        } else {
          print('No camera available');
        }
      }).catchError((err) {
        print('Error: $err.code\nError Message: $err.message');
      });

  Future _initCameraController(CameraDescription cameraDescription) async {
    await this._controller?.dispose();
    final _controller =
        CameraController(cameraDescription, widget.resolutionPreset);
    this._controller = _controller;
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (_controller.value.hasError) {
        print('Camera error ${_controller.value.errorDescription}');
      }
    });
    try {
      await _controller.initialize();
      await _controller.lockCaptureOrientation();
      final onImageAvailable = widget.onImageAvailable;
      if (onImageAvailable != null) {
        await _controller.startImageStream(onImageAvailable);
      }
      final onSizeAvailable = widget.onSizeAvailable;
      if(onSizeAvailable != null){
        onSizeAvailable.call(_controller.value.previewSize);
      }
    } on CameraException catch (e) {
      print('Camera error ${e.description}');
    }
    if (mounted) {
      setState(() {});
    }
  }
}
