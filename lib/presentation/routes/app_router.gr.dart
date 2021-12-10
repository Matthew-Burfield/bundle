// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/widgets.dart' as _i8;

import '../../domain/albums/album.dart' as _i9;
import '../pages/albums/album_form/album_form_page.dart' as _i4;
import '../pages/albums/albums_overview/albums_overview_wrapper_page.dart'
    as _i3;
import '../pages/albums/albums_overview/widgets/albums_overview_body_widget.dart'
    as _i5;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    AlbumsOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AlbumsOverviewWrapperPage());
    },
    AlbumFormRoute.name: (routeData) {
      final args = routeData.argsAs<AlbumFormRouteArgs>(
          orElse: () => const AlbumFormRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.AlbumFormPage(key: args.key, editingAlbum: args.editingAlbum),
          fullscreenDialog: true);
    },
    AlbumsOverviewBody.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AlbumsOverviewBody());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(AlbumsOverviewRoute.name, path: '/albums', children: [
          _i6.RouteConfig(AlbumsOverviewBody.name,
              path: '', parent: AlbumsOverviewRoute.name)
        ]),
        _i6.RouteConfig(AlbumFormRoute.name, path: '/album-form-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.AlbumsOverviewWrapperPage]
class AlbumsOverviewRoute extends _i6.PageRouteInfo<void> {
  const AlbumsOverviewRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/albums', initialChildren: children);

  static const String name = 'AlbumsOverviewRoute';
}

/// generated route for [_i4.AlbumFormPage]
class AlbumFormRoute extends _i6.PageRouteInfo<AlbumFormRouteArgs> {
  AlbumFormRoute({_i8.Key? key, _i9.Album? editingAlbum})
      : super(name,
            path: '/album-form-page',
            args: AlbumFormRouteArgs(key: key, editingAlbum: editingAlbum));

  static const String name = 'AlbumFormRoute';
}

class AlbumFormRouteArgs {
  const AlbumFormRouteArgs({this.key, this.editingAlbum});

  final _i8.Key? key;

  final _i9.Album? editingAlbum;

  @override
  String toString() {
    return 'AlbumFormRouteArgs{key: $key, editingAlbum: $editingAlbum}';
  }
}

/// generated route for [_i5.AlbumsOverviewBody]
class AlbumsOverviewBody extends _i6.PageRouteInfo<void> {
  const AlbumsOverviewBody() : super(name, path: '');

  static const String name = 'AlbumsOverviewBody';
}
