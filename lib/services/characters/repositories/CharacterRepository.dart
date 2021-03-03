import 'package:Sample_Characters/services/characters/models/Character.dart';

abstract class CharacterRepository {
  List<Character> getAllCharacters();

  Character getCharacterById(int idCharacter);

  void saveCharacter(Character newCharacter);

  void deleteCharacterById(int idCharacterToDelete);
}
