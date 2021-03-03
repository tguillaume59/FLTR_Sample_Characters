import 'package:Sample_Characters/services/characters/repositories/CharacterRepository.dart';
import 'package:get_it/get_it.dart';
import 'package:Sample_Characters/services/characters/models/Character.dart';
import 'package:Sample_Characters/ui/common/base_classes/blocs/BaseBloc.dart';

class HomePageBloc implements BaseBloc {
  HomePageBloc();

  CharacterRepository _characterRepository = GetIt.I.get<CharacterRepository>();

  List<Character> listCharacters = new List();

  void loadData() {
    listCharacters = _characterRepository.getAllCharacters();
  }

  @override
  void dispose() {}
}
