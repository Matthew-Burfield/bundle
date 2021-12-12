// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../domain/albums/album.dart' as _i12;
import '../pages/albums/album_form/album_form_page.dart' as _i4;
import '../pages/albums/albums_overview/albums_overview_wrapper_page.dart'
    as _i6;
import '../pages/albums/albums_overview/widgets/albums_overview_body_widget.dart'
    as _i9;
import '../pages/app_root/app_root_page.dart' as _i3;
import '../pages/images/image_form/image_form_page.dart' as _i5;
import '../pages/images/images_overview/images_overview_page.dart' as _i7;
import '../pages/profile/profile_page.dart' as _i8;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    AppRootRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AppRootPage());
    },
    AlbumFormRoute.name: (routeData) {
      final args = routeData.argsAs<AlbumFormRouteArgs>(
          orElse: () => const AlbumFormRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.AlbumFormPage(key: args.key, editingAlbum: args.editingAlbum),
          fullscreenDialog: true);
    },
    ImageFormRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.ImageFormPage(),
          fullscreenDialog: true);
    },
    FeedRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AlbumsOverviewWrapperPage());
    },
    ImageUploadRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ImagesOverviewPageWrapper());
    },
    ProfileRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    },
    AlbumsOverviewBody.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AlbumsOverviewBody());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i10.RouteConfig(AppRootRoute.name, path: '/', children: [
          _i10.RouteConfig(FeedRouter.name,
              path: 'feed',
              parent: AppRootRoute.name,
              children: [
                _i10.RouteConfig(AlbumsOverviewBody.name,
                    path: '', parent: FeedRouter.name)
              ]),
          _i10.RouteConfig(ImageUploadRouter.name,
              path: 'imageupload', parent: AppRootRoute.name),
          _i10.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: AppRootRoute.name)
        ]),
        _i10.RouteConfig(AlbumFormRoute.name, path: '/album-form-page'),
        _i10.RouteConfig(ImageFormRoute.name, path: '/image-form-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.AppRootPage]
class AppRootRoute extends _i10.PageRouteInfo<void> {
  const AppRootRoute({List<_i10.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppRootRoute';
}

/// generated route for [_i4.AlbumFormPage]
class AlbumFormRoute extends _i10.PageRouteInfo<AlbumFormRouteArgs> {
  AlbumFormRoute({_i11.Key? key, _i12.Album? editingAlbum})
      : super(name,
            path: '/album-form-page',
            args: AlbumFormRouteArgs(key: key, editingAlbum: editingAlbum));

  static const String name = 'AlbumFormRoute';
}

class AlbumFormRouteArgs {
  const AlbumFormRouteArgs({this.key, this.editingAlbum});

  final _i11.Key? key;

  final _i12.Album? editingAlbum;

  @override
  String toString() {
    return 'AlbumFormRouteArgs{key: $key, editingAlbum: $editingAlbum}';
  }
}

/// generated route for [_i5.ImageFormPage]
class ImageFormRoute extends _i10.PageRouteInfo<void> {
  const ImageFormRoute() : super(name, path: '/image-form-page');

  static const String name = 'ImageFormRoute';
}

/// generated route for [_i6.AlbumsOverviewWrapperPage]
class FeedRouter extends _i10.PageRouteInfo<void> {
  const FeedRouter({List<_i10.PageRouteInfo>? children})
      : super(name, path: 'feed', initialChildren: children);

  static const String name = 'FeedRouter';
}

/// generated route for [_i7.ImagesOverviewPageWrapper]
class ImageUploadRouter extends _i10.PageRouteInfo<void> {
  const ImageUploadRouter() : super(name, path: 'imageupload');

  static const String name = 'ImageUploadRouter';
}

/// generated route for [_i8.ProfilePage]
class ProfileRouter extends _i10.PageRouteInfo<void> {
  const ProfileRouter() : super(name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for [_i9.AlbumsOverviewBody]
class AlbumsOverviewBody extends _i10.PageRouteInfo<void> {
  const AlbumsOverviewBody() : super(name, path: '');

  static const String name = 'AlbumsOverviewBody';
}
