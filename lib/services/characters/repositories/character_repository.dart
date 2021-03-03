import 'package:Sample_Characters/services/characters/models/character.dart';

abstract class CharacterRepository {
  List<Character> getAllCharacters();

  Character getCharacterById(int idCharacter);

  void saveCharacter(Character newCharacter);

  void deleteCharacterById(int idCharacterToDelete);
}
