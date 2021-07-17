// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/compare_face/compare_face_cubit.dart' as _i6;
import '../bloc/create_face_auth/create_face_auth_cubit.dart' as _i8;
import '../bloc/find_face/find_face_cubit.dart' as _i3;
import '../bloc/watch_face_auth/watch_face_auth_cubit.dart' as _i4;
import '../repository/database/dao/face_auth_dao.dart' as _i10;
import '../repository/database/database_module.dart' as _i11;
import '../repository/database/face_auth_database.dart' as _i9;
import '../repository/face_auth_repository.dart' as _i5;
import '../service/mobile_face_net_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  gh.factory<_i3.FindFaceCubit>(() => _i3.FindFaceCubit());
  gh.factory<_i4.WatchFaceAuthCubit>(
      () => _i4.WatchFaceAuthCubit(get<_i5.FaceAuthRepository>()));
  gh.factory<_i6.CompareFaceCubit>(() => _i6.CompareFaceCubit(
      get<_i5.FaceAuthRepository>(), get<_i7.MobileFaceNetService>()));
  gh.factory<_i8.CreateFaceAuthCubit>(() => _i8.CreateFaceAuthCubit(
      get<_i5.FaceAuthRepository>(), get<_i7.MobileFaceNetService>()));
  gh.singleton<_i9.FaceAuthDatabase>(databaseModule.faceAuthDatabase);
  gh.singletonAsync<_i7.MobileFaceNetService>(
      () => _i7.MobileFaceNetService.create());
  gh.singleton<_i10.FaceAuthDao>(
      databaseModule.faceAuthDao(get<_i9.FaceAuthDatabase>()));
  gh.singleton<_i5.FaceAuthRepository>(
      _i5.FaceAuthRepository(get<_i10.FaceAuthDao>()));
  return get;
}

class _$DatabaseModule extends _i11.DatabaseModule {}
