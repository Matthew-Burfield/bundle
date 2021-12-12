import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class AppRootPage extends StatelessWidget {
  const AppRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        FeedRouter(),
        ImageUploadRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'upload photo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'profile',
            ),
          ],
        );
      },
    );
  }
}
