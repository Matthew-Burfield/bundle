import 'package:bundle/application/albums/album_form/album_form_cubit.dart';
import 'package:bundle/domain/albums/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TitleField extends HookWidget {
  const TitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(
      text: context
          .read<AlbumFormCubit>()
          .state
          .album
          .title
          .value
          .fold((f) => '', (r) => r),
    );

    return BlocConsumer<AlbumFormCubit, AlbumFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... we can't get to this point though.
        textEditingController.text = state.album.title.getOrCrash();
      },
      buildWhen: (previous, current) =>
          previous.album.title != current.album.title,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Title',
              counterText: '',
            ),
            maxLength: AlbumTitle.maxLength,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            onChanged: (value) =>
                context.read<AlbumFormCubit>().titleChanged(value),
            validator: (_) => context
                .read<AlbumFormCubit>()
                .state
                .album
                .title
                .value
                .fold(
                  (f) => f.maybeMap(
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    empty: (_) => 'Cannot be empty',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
          ),
        );
      },
    );
  }
}
