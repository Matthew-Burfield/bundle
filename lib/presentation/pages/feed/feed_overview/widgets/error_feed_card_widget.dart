import 'package:bundle/domain/albums/album.dart';
import 'package:flutter/material.dart';

class ErrorAlbumCard extends StatelessWidget {
  final Album album;

  const ErrorAlbumCard({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).errorColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Text(
                'Invalid album, please contact support',
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText2!
                    .copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Details for nerds:',
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
              Text(
                album.failureOption.fold(() => '', (f) => f.toString()),
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
            ],
          ),
        ));
  }
}
