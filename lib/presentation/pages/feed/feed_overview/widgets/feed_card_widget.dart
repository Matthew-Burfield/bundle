import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/albums/album_actor/album_actor_cubit.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  const AlbumCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          // debugger();
          // AutoRouter.of(context).push(AlbumFormRoute(editingAlbum: album));
        },
        onLongPress: () {
          final albumActorContext = context.read<AlbumActorCubit>();
          showDialog(
            context: context,
            builder: (context) {
              return BlocProvider.value(
                value: albumActorContext,
                child: AlertDialog(
                  title: const Text('Selected album:'),
                  content: Text(
                    album.title.getOrCrash(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('CANCEL'),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                      child: const Text('DELETE'),
                      onPressed: () {
                        albumActorContext.deleteAlbum(album);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                album.title.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
