import 'package:auto_route/auto_route.dart';
import 'package:bundle/application/albums/album_form/album_form_cubit.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/injection.dart';
import 'package:bundle/presentation/pages/feed/album_form/widgets/album_form_page_body.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumFormPage extends StatelessWidget {
  final Album? editingAlbum;

  const AlbumFormPage({Key? key, this.editingAlbum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AlbumFormCubit>()..initialized(optionOf(editingAlbum)),
      child: BlocConsumer<AlbumFormCubit, AlbumFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => {},
            (either) => {
              either.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                      children: [
                        const Icon(
                          Icons.warning,
                          color: Colors.red,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          failure.map(
                              unexpected: (_) =>
                                  'Unexpected error occured, please contact support.'),
                        ),
                      ],
                    ),
                  ));
                },
                (_) {
                  // TODO: update to popUntil when I figure out how to do that.
                  AutoRouter.of(context).pop();
                },
              ),
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: const <Widget>[AlbumFormPageBody()],
          );
        },
      ),
    );
  }
}
