import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/albums/album_watcher/album_watcher_cubit.dart';
import 'package:bundle/injection.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsOverviewWrapperPage extends StatelessWidget {
  const AlbumsOverviewWrapperPage({Key? key}) : super(key: key);

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
          BlocProvider<AlbumWatcherCubit>(
            create: (_) => getIt<AlbumWatcherCubit>()..watchAllStarted(),
          ),
        ],
        child: const AutoRouter(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(AlbumFormRoute(editingAlbum: null));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
