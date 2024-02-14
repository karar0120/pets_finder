import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_finder/features/animals/data/models/get_animals_query_params.dart';
import 'package:pets_finder/features/animals/domain/use_case/animals.dart';

part 'animals_state.dart';
part 'animals_cubit.freezed.dart';

class AnimalsCubit extends Cubit<AnimalsState> {
  AnimalsCubit(this._animalsUseCase) : super(const AnimalsState.initial());

  final GetAnimalsUseCase _animalsUseCase;

  void emitGetAnimalsState() async {
    emit(const AnimalsState.loading());

    final response = await _animalsUseCase
        .execute(GetAnimalsQueryParams(type: "cat", page: 1, limit: 10));
    response.when(success: (animalsResponse) {
      emit(AnimalsState.success(animalsResponse.animals));
    }, failure: (error) {
      emit(AnimalsState.error(error: error.apiErrorModel.title ?? " "));
    });
  }
}
