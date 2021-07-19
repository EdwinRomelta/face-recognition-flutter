import 'package:auto_route/auto_route.dart';
import 'package:face_recognition_flutter/src/page/anti_spoofing_page.dart';
import 'package:face_recognition_flutter/src/page/camera_page.dart';
import 'package:face_recognition_flutter/src/page/compare_page.dart';
import 'package:face_recognition_flutter/src/page/create_face_auth_page.dart';
import 'package:face_recognition_flutter/src/page/home_page.dart';
import 'package:face_recognition_flutter/src/page/real_time_processing_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      page: CameraPage,
    ),
    AutoRoute<bool>(
      page: CreateFaceAuthPage,
    ),
    AutoRoute(
      page: ComparePage,
    ),
    AutoRoute(
      page: AntiSpoofingPage,
    ),
    AutoRoute(
      page: RealTimeProcessingPage,
    ),
  ],
)
class $AppRouter {}
