import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bundle/application/auth/auth_bloc.dart';

import '../injection.dart';
import 'routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Bundle',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            // appBarTheme: ThemeData.light().appBarTheme.copyWith(
            //       backgroundColor: Colors.transparent,
            //       elevation: 0.0,
            //       titleTextStyle: const TextStyle(
            //         color: Colors.black,
            //         fontSize: 18.0,
            //       ),
            //     ),
            // floatingActionButtonTheme: FloatingActionButtonThemeData(
            //   backgroundColor: Colors.yellow[800],
            //   foregroundColor: Colors.white,
            // ),
            // inputDecorationTheme: InputDecorationTheme(
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            // ),
            ),
      ),
    );
  }
}
