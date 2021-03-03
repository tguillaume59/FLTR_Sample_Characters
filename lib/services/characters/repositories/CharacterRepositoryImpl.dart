import 'package:get_it/get_it.dart';
import 'package:Sample_Characters/services/characters/database/MyDataBase.dart';
import 'package:Sample_Characters/services/characters/models/Character.dart';
import 'package:Sample_Characters/services/characters/repositories/CharacterRepository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  MyDatabase _database = GetIt.I.get<MyDatabase>();

  @override
  List<Character> getAllCharacters() {
    return _database.getAllCharacters();
  }

  @override
  Character getCharacterById(int idCharacter) {
    return _database.getCharacterById(idCharacter);
  }

  @override
  void deleteCharacterById(int idCharacterToDelete) {
    _database.deleteCharacterById(idCharacterToDelete);
  }

  @override
  void saveCharacter(Character newCharacter) {
    if (newCharacter != null) {
      _database.save(newCharacter);
    }
  }
}
