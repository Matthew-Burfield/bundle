import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/albums/album_actor/album_actor_cubit.dart';
import 'package:bundle/injection.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesOverviewPageWrapper extends StatelessWidget {
  const ImagesOverviewPageWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            // TODO
          },
        ),
        actions: [],
      ),
      body: MultiBlocProvider(
        providers: [
          // BlocProvider<AlbumWatcherCubit>(
          //   create: (_) => getIt<AlbumWatcherCubit>()..watchAllStarted(),
          // ),
          BlocProvider<AlbumActorCubit>(
            create: (_) => getIt<AlbumActorCubit>(),
          ),
        ],
        child: const ImagesOverviewPage(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(const ImageFormRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ImagesOverviewPage extends StatelessWidget {
  const ImagesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('IMAGES'),
    );
  }
}
