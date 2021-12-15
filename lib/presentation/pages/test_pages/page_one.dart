import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page one'),
      ),
      body: Column(
        children: [
          // ElevatedButton(
          //     onPressed: () => AutoRouter.of(context).push(const RouteTwo()),
          //     child: const Text('Go to page two')),
          // ElevatedButton(
          //     onPressed: () => AutoRouter.of(context).push(const RouteThree()),
          //     child: const Text('Go to page three'))
        ],
      ),
    );
  }
}
