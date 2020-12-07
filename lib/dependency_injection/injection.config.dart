// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../state_management/auth/cubit/auth_cubit.dart';
import '../repositories/auth_jwt_repository.dart';
import '../state_management/bike_list/bike_list_cubit.dart';
import '../repositories/bike_reepository.dart';
import '../repositories/i_auth_repository.dart';
import '../repositories/i_bike_repository.dart';
import 'regester_modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<IAuthRepository>(() => AuthJwtRepository(dio: get<Dio>()));
  gh.factory<Location>(() => registerModule.location);
  gh.factory<AuthCubit>(() => AuthCubit(get<IAuthRepository>()));
  gh.lazySingleton<IBikeRepository>(() => BikeRepository(
        geolocator: get<Geolocator>(),
        dio: get<Dio>(),
        location: get<Location>(),
      ));
  gh.factory<BikeListCubit>(() => BikeListCubit(get<IBikeRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<Dio>(registerModule.dio);
  gh.singleton<Geolocator>(registerModule.geolocator);
  return get;
}

class _$RegisterModule extends RegisterModule {}
