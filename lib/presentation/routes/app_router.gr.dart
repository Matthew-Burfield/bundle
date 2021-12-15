// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../pages/album/album_page.dart' as _i7;
import '../pages/home/home_page.dart' as _i3;
import '../pages/image_upload/images_overview/image_upload_page.dart' as _i8;
import '../pages/profile/pages/setting_one_page.dart' as _i4;
import '../pages/profile/pages/setting_three_page.dart' as _i6;
import '../pages/profile/pages/setting_two_page.dart' as _i5;
import '../pages/profile/profile_page.dart' as _i9;
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
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    SettingsOneRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i4.SettingsOnePage(),
          fullscreenDialog: true);
    },
    SettingsTwoRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.SettingsTwoPage(),
          fullscreenDialog: true);
    },
    SettingsThreeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i6.SettingsThreePage(),
          fullscreenDialog: true);
    },
    AlbumRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AlbumPage());
    },
    ImageUploadRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ImageUploadPage());
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i10.RouteConfig(HomeRoute.name, path: '/', children: [
          _i10.RouteConfig(AlbumRoute.name,
              path: 'album-page', parent: HomeRoute.name),
          _i10.RouteConfig(ImageUploadRoute.name,
              path: 'image-upload-page', parent: HomeRoute.name),
          _i10.RouteConfig(ProfileRoute.name,
              path: 'profile-page', parent: HomeRoute.name)
        ]),
        _i10.RouteConfig(SettingsOneRoute.name, path: '/settings-one-page'),
        _i10.RouteConfig(SettingsTwoRoute.name, path: '/settings-two-page'),
        _i10.RouteConfig(SettingsThreeRoute.name, path: '/settings-three-page')
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

/// generated route for [_i3.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i4.SettingsOnePage]
class SettingsOneRoute extends _i10.PageRouteInfo<void> {
  const SettingsOneRoute() : super(name, path: '/settings-one-page');

  static const String name = 'SettingsOneRoute';
}

/// generated route for [_i5.SettingsTwoPage]
class SettingsTwoRoute extends _i10.PageRouteInfo<void> {
  const SettingsTwoRoute() : super(name, path: '/settings-two-page');

  static const String name = 'SettingsTwoRoute';
}

/// generated route for [_i6.SettingsThreePage]
class SettingsThreeRoute extends _i10.PageRouteInfo<void> {
  const SettingsThreeRoute() : super(name, path: '/settings-three-page');

  static const String name = 'SettingsThreeRoute';
}

/// generated route for [_i7.AlbumPage]
class AlbumRoute extends _i10.PageRouteInfo<void> {
  const AlbumRoute() : super(name, path: 'album-page');

  static const String name = 'AlbumRoute';
}

/// generated route for [_i8.ImageUploadPage]
class ImageUploadRoute extends _i10.PageRouteInfo<void> {
  const ImageUploadRoute() : super(name, path: 'image-upload-page');

  static const String name = 'ImageUploadRoute';
}

/// generated route for [_i9.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}
