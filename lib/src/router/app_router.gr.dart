// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:face_recognition_flutter/src/page/camera_page.dart' as _i4;
import 'package:face_recognition_flutter/src/page/compare_page.dart' as _i6;
import 'package:face_recognition_flutter/src/page/create_face_auth_page.dart'
    as _i5;
import 'package:face_recognition_flutter/src/page/home_page.dart' as _i3;
import 'package:flutter/material.dart' as _i2;
import 'package:moor/moor.dart' as _i7;

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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(CameraRoute.name, path: '/camera-page'),
        _i1.RouteConfig(CreateFaceAuthRoute.name,
            path: '/create-face-auth-page'),
        _i1.RouteConfig(CompareRoute.name, path: '/compare-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class CameraRoute extends _i1.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({required void Function(_i7.Uint8List) onFaceAvailable})
      : super(name,
            path: '/camera-page',
            args: CameraRouteArgs(onFaceAvailable: onFaceAvailable));

  static const String name = 'CameraRoute';
}

class CameraRouteArgs {
  const CameraRouteArgs({required this.onFaceAvailable});

  final void Function(_i7.Uint8List) onFaceAvailable;
}

class CreateFaceAuthRoute extends _i1.PageRouteInfo<CreateFaceAuthRouteArgs> {
  CreateFaceAuthRoute({required _i7.Uint8List croppedFace})
      : super(name,
            path: '/create-face-auth-page',
            args: CreateFaceAuthRouteArgs(croppedFace: croppedFace));

  static const String name = 'CreateFaceAuthRoute';
}

class CreateFaceAuthRouteArgs {
  const CreateFaceAuthRouteArgs({required this.croppedFace});

  final _i7.Uint8List croppedFace;
}

class CompareRoute extends _i1.PageRouteInfo<CompareRouteArgs> {
  CompareRoute({required _i7.Uint8List faceImage})
      : super(name,
            path: '/compare-page',
            args: CompareRouteArgs(faceImage: faceImage));

  static const String name = 'CompareRoute';
}

class CompareRouteArgs {
  const CompareRouteArgs({required this.faceImage});

  final _i7.Uint8List faceImage;
}
