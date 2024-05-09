import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entity/country_entity.dart';
import '../../../domain/usecase/get_all_characters.dart';

part 'character_page_state.dart';

class CharacterPageCubit extends Cubit<CharacterPageState> {
  CharacterPageCubit({
    required GetAllCountries getAllCharacters,
  })  : _getAllCharacters = getAllCharacters,
        super(const CharacterPageState());

  final GetAllCountries _getAllCharacters;

  Future<void> fetchNextPage() async {
    if (state.hasReachedEnd) return;

    emit(state.copyWith(status: CharacterPageStatus.loading));
    // _getAllCharacters.call(page: 0);

    final list = await _getAllCharacters(page: state.currentPage);
    print(list);
    emit(
      state.copyWith(
        status: CharacterPageStatus.success,
        hasReachedEnd: list.isEmpty,
        currentPage: state.currentPage + 1,
        characters: List.of(state.characters)..addAll(list),
      ),
    );
  }
}
