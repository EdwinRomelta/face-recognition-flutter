// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:typed_data' as _i9;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:face_recognition_flutter/src/page/anti_spoofing_page.dart'
    as _i7;
import 'package:face_recognition_flutter/src/page/camera_page.dart' as _i4;
import 'package:face_recognition_flutter/src/page/compare_page.dart' as _i6;
import 'package:face_recognition_flutter/src/page/create_face_auth_page.dart'
    as _i5;
import 'package:face_recognition_flutter/src/page/home_page.dart' as _i3;
import 'package:face_recognition_flutter/src/page/real_time_processing_page.dart'
    as _i8;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    CameraRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CameraRouteArgs>();
          return _i4.CameraPage(args.onFaceAvailable);
        }),
    CreateFaceAuthRoute.name: (routeData) => _i1.AdaptivePage<bool>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateFaceAuthRouteArgs>();
          return _i5.CreateFaceAuthPage(args.croppedFace);
        }),
    CompareRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CompareRouteArgs>();
          return _i6.ComparePage(args.faceImage);
        }),
    AntiSpoofingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AntiSpoofingRouteArgs>();
          return _i7.AntiSpoofingPage(args.faceImage);
        }),
    RealTimeProcessingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.RealTimeProcessingPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(CameraRoute.name, path: '/camera-page'),
        _i1.RouteConfig(CreateFaceAuthRoute.name,
            path: '/create-face-auth-page'),
        _i1.RouteConfig(CompareRoute.name, path: '/compare-page'),
        _i1.RouteConfig(AntiSpoofingRoute.name, path: '/anti-spoofing-page'),
        _i1.RouteConfig(RealTimeProcessingRoute.name,
            path: '/real-time-processing-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class CameraRoute extends _i1.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({required void Function(_i9.Uint8List) onFaceAvailable})
      : super(name,
            path: '/camera-page',
            args: CameraRouteArgs(onFaceAvailable: onFaceAvailable));

  static const String name = 'CameraRoute';
}

class CameraRouteArgs {
  const CameraRouteArgs({required this.onFaceAvailable});

  final void Function(_i9.Uint8List) onFaceAvailable;
}

class CreateFaceAuthRoute extends _i1.PageRouteInfo<CreateFaceAuthRouteArgs> {
  CreateFaceAuthRoute({required _i9.Uint8List croppedFace})
      : super(name,
            path: '/create-face-auth-page',
            args: CreateFaceAuthRouteArgs(croppedFace: croppedFace));

  static const String name = 'CreateFaceAuthRoute';
}

class CreateFaceAuthRouteArgs {
  const CreateFaceAuthRouteArgs({required this.croppedFace});

  final _i9.Uint8List croppedFace;
}

class CompareRoute extends _i1.PageRouteInfo<CompareRouteArgs> {
  CompareRoute({required _i9.Uint8List faceImage})
      : super(name,
            path: '/compare-page',
            args: CompareRouteArgs(faceImage: faceImage));

  static const String name = 'CompareRoute';
}

class CompareRouteArgs {
  const CompareRouteArgs({required this.faceImage});

  final _i9.Uint8List faceImage;
}

class AntiSpoofingRoute extends _i1.PageRouteInfo<AntiSpoofingRouteArgs> {
  AntiSpoofingRoute({required _i9.Uint8List faceImage})
      : super(name,
            path: '/anti-spoofing-page',
            args: AntiSpoofingRouteArgs(faceImage: faceImage));

  static const String name = 'AntiSpoofingRoute';
}

class AntiSpoofingRouteArgs {
  const AntiSpoofingRouteArgs({required this.faceImage});

  final _i9.Uint8List faceImage;
}

class RealTimeProcessingRoute extends _i1.PageRouteInfo {
  const RealTimeProcessingRoute()
      : super(name, path: '/real-time-processing-page');

  static const String name = 'RealTimeProcessingRoute';
}
