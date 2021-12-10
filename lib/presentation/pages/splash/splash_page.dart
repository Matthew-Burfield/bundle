import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/auth/auth_bloc.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print('waiting...');
            Timer(const Duration(seconds: 2), () {
              print('redirect!');
              AutoRouter.of(context).replace(const AlbumsOverviewRoute());
            });
          },
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
