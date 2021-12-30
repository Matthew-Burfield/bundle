import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_state.dart';
part 'images_cubit.freezed.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImagesCubit() : super(ImagesState.initial());
}
