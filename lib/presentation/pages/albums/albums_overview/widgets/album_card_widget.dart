import 'package:bundle/domain/albums/album.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  const AlbumCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        // TODO: Navigate to the edit page
      },
      onLongPress: () {
        // TODO: Show the delete dialog
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
    ));
  }
}
