import 'package:auto_route/annotations.dart';
import 'package:bundle/presentation/pages/albums/album_form/album_form_page.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/albums_overview_wrapper_page.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/widgets/albums_overview_body_widget.dart';
import 'package:bundle/presentation/pages/app_root/app_root_page.dart';
import 'package:bundle/presentation/pages/images/image_form/image_form_page.dart';
import 'package:bundle/presentation/pages/images/images_overview/images_overview_page.dart';
import 'package:bundle/presentation/pages/profile/profile_page.dart';
import 'package:bundle/presentation/pages/sign_in/sign_in_page.dart';
import 'package:bundle/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      path: '/',
      page: AppRootPage,
      children: [
        AutoRoute(
          path: 'feed',
          name: 'FeedRouter',
          page: AlbumsOverviewWrapperPage,
          children: [
            AutoRoute(path: '', page: AlbumsOverviewBody),
          ],
        ),
        AutoRoute(
            path: 'imageupload',
            name: 'ImageUploadRouter',
            page: ImagesOverviewPageWrapper),
        AutoRoute(path: 'profile', name: 'ProfileRouter', page: ProfilePage),
      ],
    ),
    AutoRoute(page: AlbumFormPage, fullscreenDialog: true),
    AutoRoute(page: ImageFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
