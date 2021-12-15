import 'package:bundle/application/albums/album_watcher/album_watcher_cubit.dart';
import 'package:bundle/presentation/pages/feed/feed_overview/widgets/feed_card_widget.dart';
import 'package:bundle/presentation/pages/feed/feed_overview/widgets/error_feed_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedOverviewBody extends StatelessWidget {
  const FeedOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumWatcherCubit, AlbumWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Text('initial'),
          loadInProgress: (_) => const Text('In Progress'),
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
          loadFailure: (_) => const Text('Fail'),
        );
      },
    );
  }
}
