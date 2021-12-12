// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/albums/album_actor/album_actor_cubit.dart' as _i8;
import 'application/albums/album_form/album_form_cubit.dart' as _i9;
import 'application/albums/album_watcher/album_watcher_cubit.dart' as _i10;
import 'application/auth/auth_bloc.dart' as _i11;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i7;
import 'domain/albums/i_album_repository.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'infrastructure/albums/album_repository.dart' as _i4;
import 'infrastructure/auth/auth_facade.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAlbumRepository>(() => _i4.AlbumRepository());
  gh.factory<_i5.IAuthFacade>(() => _i6.AuthFacade());
  gh.factory<_i7.SignInFormBloc>(
      () => _i7.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i8.AlbumActorCubit>(
      () => _i8.AlbumActorCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i9.AlbumFormCubit>(
      () => _i9.AlbumFormCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i10.AlbumWatcherCubit>(
      () => _i10.AlbumWatcherCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i5.IAuthFacade>()));
  return get;
}
