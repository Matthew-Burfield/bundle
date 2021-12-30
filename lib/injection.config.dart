// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/albums/album_actor/album_actor_cubit.dart' as _i13;
import 'application/albums/album_form/album_form_cubit.dart' as _i14;
import 'application/albums/album_watcher/album_watcher_cubit.dart' as _i15;
import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i12;
import 'application/image_upload_permission/image_upload_permission_cubit.dart'
    as _i11;
import 'domain/albums/i_album_repository.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/core/i_device_permissions_facade.dart' as _i7;
import 'domain/image_upload/i_image_upload_repository.dart' as _i9;
import 'infrastructure/albums/album_repository.dart' as _i4;
import 'infrastructure/auth/auth_facade.dart' as _i6;
import 'infrastructure/core/permission_facade.dart' as _i8;
import 'infrastructure/image_upload/image_upload_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAlbumRepository>(() => _i4.AlbumRepository());
  gh.factory<_i5.IAuthFacade>(() => _i6.AuthFacade());
  gh.factory<_i7.IDevicePermissionsFacade>(() => _i8.PermissionFacade());
  gh.lazySingleton<_i9.IImageUploadRepository>(
      () => _i10.ImageUploadRepository());
  gh.factory<_i11.ImageUploadPermissionCubit>(() =>
      _i11.ImageUploadPermissionCubit(get<_i7.IDevicePermissionsFacade>()));
  gh.factory<_i12.SignInFormBloc>(
      () => _i12.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i13.AlbumActorCubit>(
      () => _i13.AlbumActorCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i14.AlbumFormCubit>(
      () => _i14.AlbumFormCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i15.AlbumWatcherCubit>(
      () => _i15.AlbumWatcherCubit(get<_i3.IAlbumRepository>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i5.IAuthFacade>()));
  return get;
}
