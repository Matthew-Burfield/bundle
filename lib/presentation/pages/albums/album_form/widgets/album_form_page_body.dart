import 'package:bundle/application/albums/album_form/album_form_cubit.dart';
import 'package:bundle/presentation/pages/albums/album_form/widgets/title_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumFormPageBody extends StatelessWidget {
  const AlbumFormPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<AlbumFormCubit, AlbumFormState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) =>
              Text(state.isEditing ? 'Edit an album' : 'Create an album'),
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  context.read<AlbumFormCubit>().saved();
                },
              );
            },
          )
        ],
      ),
      body: BlocBuilder<AlbumFormCubit, AlbumFormState>(
        buildWhen: (previous, current) =>
            previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  TitleField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
