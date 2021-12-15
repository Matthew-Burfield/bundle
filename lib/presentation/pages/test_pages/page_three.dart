import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageThree extends HookWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prevIndex = useState<int?>(null);
    return AutoTabsScaffold(
      routes: const [
        // RouteThreeA(),
        // RouteThreeB(),
      ],
      appBarBuilder: (_, tabsRouter) {
        if (tabsRouter.current.name == 'RouteThreeB') {
          return AppBar(
            title: Text(tabsRouter.current.name),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                if (prevIndex.value != null) {
                  tabsRouter.setActiveIndex(prevIndex.value ?? 0);
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
        if (tabsRouter.current.name == 'RouteThreeB') {
          return Container();
        }
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            prevIndex.value = tabsRouter.activeIndex;
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'A'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'B'),
          ],
        );
      },
    );
  }
}
