import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/pages/album/album_page.dart';
import 'package:bundle/presentation/pages/feed/album_form/album_form_page.dart';
import 'package:bundle/presentation/pages/feed/feed_overview/feed_overview_wrapper_page.dart';
import 'package:bundle/presentation/pages/feed/feed_overview/widgets/feed_overview_body_widget.dart';
import 'package:bundle/presentation/pages/home/home_page.dart';
import 'package:bundle/presentation/pages/image_upload/images_overview/image_upload_page.dart';
import 'package:bundle/presentation/pages/profile/pages/setting_one_page.dart';
import 'package:bundle/presentation/pages/profile/pages/setting_three_page.dart';
import 'package:bundle/presentation/pages/profile/pages/setting_two_page.dart';
import 'package:bundle/presentation/pages/profile/profile_page.dart';
import 'package:bundle/presentation/pages/sign_in/sign_in_page.dart';
import 'package:bundle/presentation/pages/splash/splash_page.dart';
import 'package:bundle/presentation/pages/test_pages/page_one.dart';
import 'package:bundle/presentation/pages/test_pages/page_three.dart';
import 'package:bundle/presentation/pages/test_pages/page_three_a.dart';
import 'package:bundle/presentation/pages/test_pages/page_three_b.dart';
import 'package:bundle/presentation/pages/test_pages/page_two.dart';
import 'package:flutter/material.dart';

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     AutoRoute(page: PageOne, initial: true),
//     AutoRoute(page: PageTwo, fullscreenDialog: true),
//     AutoRoute(
//       page: PageThree,
//       children: [
//         AutoRoute(page: PageThreeA),
//         AutoRoute(page: PageThreeB, fullscreenDialog: true),
//       ],
//     ),
//   ],
// )
// class $AppRouter {}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(page: AlbumPage),
        AutoRoute(page: ImageUploadPage),
        AutoRoute(page: ProfilePage),
        //     path: 'feed',
        //     name: 'FeedRouter',
        //     page: FeedOverviewWrapperPage,
        //     children: [
        //       AutoRoute(
        //         path: '',
        //         page: FeedOverviewBody,
        //       ),
        //       AutoRoute(page: AlbumFormPage, fullscreenDialog: true),
        //     ],
        //   ),
        //   AutoRoute(
        //     path: 'imageupload',
        //     name: 'ImageUploadRouter',
        //     page: ImageUploadPage,
        //     fullscreenDialog: true,
        //   ),
        //   AutoRoute(
        //     path: 'profile',
        //     name: 'ProfileRouter',
        //     page: ProfilePage,
        //   ),
      ],
    ),
    AutoRoute(page: SettingsOnePage, fullscreenDialog: true),
    AutoRoute(page: SettingsTwoPage, fullscreenDialog: true),
    AutoRoute(page: SettingsThreePage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
