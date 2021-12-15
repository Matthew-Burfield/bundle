import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/albums/album_actor/album_actor_cubit.dart';
import 'package:bundle/application/albums/album_watcher/album_watcher_cubit.dart';
import 'package:bundle/injection.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedOverviewWrapperPage extends StatelessWidget {
  const FeedOverviewWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<AlbumWatcherCubit>(
            create: (_) => getIt<AlbumWatcherCubit>()..watchAllStarted(),
          ),
          BlocProvider<AlbumActorCubit>(
            create: (_) => getIt<AlbumActorCubit>(),
          ),
        ],
        child: const AutoRouter(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // AutoRouter.of(context).push(AlbumFormRoute(editingAlbum: null));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
