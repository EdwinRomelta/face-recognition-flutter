// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/anti_spoofing/anti_spoofing_cubit.dart' as _i4;
import '../bloc/compare_face/compare_face_cubit.dart' as _i8;
import '../bloc/create_face_auth/create_face_auth_cubit.dart' as _i10;
import '../bloc/find_face/find_face_cubit.dart' as _i3;
import '../bloc/watch_face_auth/watch_face_auth_cubit.dart' as _i6;
import '../repository/database/dao/face_auth_dao.dart' as _i12;
import '../repository/database/database_module.dart' as _i13;
import '../repository/database/face_auth_database.dart' as _i11;
import '../repository/face_auth_repository.dart' as _i7;
import '../service/face_anti_spoofing_service.dart' as _i5;
import '../service/mobile_face_net_service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  gh.factory<_i3.FindFaceCubit>(() => _i3.FindFaceCubit());
  gh.factory<_i4.AntiSpoofingCubit>(
      () => _i4.AntiSpoofingCubit(get<_i5.FaceAntiSpoofingService>()));
  gh.factory<_i6.WatchFaceAuthCubit>(
      () => _i6.WatchFaceAuthCubit(get<_i7.FaceAuthRepository>()));
  gh.factory<_i8.CompareFaceCubit>(() => _i8.CompareFaceCubit(
      get<_i7.FaceAuthRepository>(), get<_i9.MobileFaceNetService>()));
  gh.factory<_i10.CreateFaceAuthCubit>(() => _i10.CreateFaceAuthCubit(
      get<_i7.FaceAuthRepository>(), get<_i9.MobileFaceNetService>()));
  gh.singletonAsync<_i5.FaceAntiSpoofingService>(
      () => _i5.FaceAntiSpoofingService.create());
  gh.singleton<_i11.FaceAuthDatabase>(databaseModule.faceAuthDatabase);
  gh.singletonAsync<_i9.MobileFaceNetService>(
      () => _i9.MobileFaceNetService.create());
  gh.singleton<_i12.FaceAuthDao>(
      databaseModule.faceAuthDao(get<_i11.FaceAuthDatabase>()));
  gh.singleton<_i7.FaceAuthRepository>(
      _i7.FaceAuthRepository(get<_i12.FaceAuthDao>()));
  return get;
}

class _$DatabaseModule extends _i13.DatabaseModule {}
