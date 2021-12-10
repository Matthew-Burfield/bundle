import 'package:bundle/application/albums/album_watcher/album_watcher_cubit.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/widgets/album_card_widget.dart';
import 'package:bundle/presentation/pages/albums/albums_overview/widgets/error_album_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumsOverviewBody extends StatelessWidget {
  const AlbumsOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumWatcherCubit, AlbumWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            child: Text('initial'),
          ),
          loadInProgress: (_) => Container(
            child: Text('In Progress'),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final album = state.albums[index];
                if (album.failureOption.isSome()) {
                  return ErrorAlbumCard(album: album);
                }
                return AlbumCard(album: album);
              },
              itemCount: state.albums.size,
            );
          },
          loadFailure: (_) => Container(
            child: Text('Fail'),
          ),
        );
      },
    );
  }
}
