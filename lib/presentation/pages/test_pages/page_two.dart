import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page two'),
      ),
      body: Column(),
    );
  }
}
