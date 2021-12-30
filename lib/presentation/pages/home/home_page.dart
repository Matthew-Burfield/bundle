import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prevRouterIndex = useState<int?>(null);
    return AutoTabsScaffold(
      routes: const [
        AlbumRoute(),
        ImageUploadRoute(),
        ProfileRoute(),
      ],
      appBarBuilder: (_, tabsRouter) {
        if (tabsRouter.current.name == 'ImageUploadRoute') {
          return AppBar(
            title: Text(tabsRouter.current.name),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                if (prevRouterIndex.value != null) {
                  tabsRouter.setActiveIndex(prevRouterIndex.value ?? 0);
                } else {
                  tabsRouter.navigateBack();
                }
              },
            ),
          );
        }
        return AppBar(
          title: Text(tabsRouter.current.name),
        );
      },
      bottomNavigationBuilder: (_, tabsRouter) {
        if (tabsRouter.current.name == 'ImageUploadRoute') {
          return const SizedBox();
        }
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            prevRouterIndex.value = tabsRouter.activeIndex;
            tabsRouter.setActiveIndex(index);
          },
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
