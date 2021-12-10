import 'package:auto_route/annotations.dart';
import 'package:bundle/presentation/pages/albums/album_form/album_form_page.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/albums_overview_wrapper_page.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/widgets/albums_overview_body_widget.dart';
import 'package:bundle/presentation/pages/sign_in/sign_in_page.dart';
import 'package:bundle/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      path: '/albums',
      name: 'AlbumsOverviewRoute',
      page: AlbumsOverviewWrapperPage,
      children: [
        AutoRoute(path: '', page: AlbumsOverviewBody),
      ],
    ),
    AutoRoute(page: AlbumFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
