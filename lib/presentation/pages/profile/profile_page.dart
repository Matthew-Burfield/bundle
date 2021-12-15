import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Settings'),
        ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const SettingsOneRoute());
          },
          child: const Text('Settings page one'),
        ),
        ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const SettingsTwoRoute());
          },
          child: const Text('Settings page two'),
        ),
        ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const SettingsThreeRoute());
          },
          child: const Text('Settings page three'),
        ),
      ],
    );
  }
}
