import 'dart:math';
import 'package:Sample_Characters/services/characters/models/Character.dart';
import '../models/SexEnum.dart';

class MyDatabase {
  List<Character> _listCharacter;

  MyDatabase() {
    _listCharacter = new List();
    _addMockedData();
  }

  //region debug
  void _addMockedData() {
    save(Character("Clarke", "Griffin", 20, SexEnum.GIRL, "",
        "https://static.wikia.nocookie.net/the-100/images/8/87/Red_Sun_Rising_6x02_%281%29.jpg/revision/latest?cb=20190515222244&path-prefix=fr"));
    save(Character("Bellamy", "Blake", 24, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/5/5c/Bellamy_S1.gif/revision/latest/scale-to-width-down/268?cb=20190409200824&path-prefix=fr"));
    save(Character("Raven", "Reyes", 23, SexEnum.GIRL, "Technician",
        "https://static.wikia.nocookie.net/the-100/images/7/73/Raven_S2.gif/revision/latest/scale-to-width-down/305?cb=20190404211716&path-prefix=fr"));
    save(Character("John", "Murphy", 21, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/7/78/Murphy_S3.gif/revision/latest/scale-to-width-down/245?cb=20190418192337&path-prefix=fr"));
    save(Character("Abigail", "Griffin", 43, SexEnum.GIRL, "Doctor",
        "https://static.wikia.nocookie.net/the-100/images/8/8d/Abby_S2.png/revision/latest/scale-to-width-down/279?cb=20190718184522&path-prefix=fr"));
    save(Character("Marcus", "Kane", 45, SexEnum.BOY, "Security Chief",
        "https://static.wikia.nocookie.net/the-100/images/b/b6/Marcus_Kane.gif/revision/latest/scale-to-width-down/222?cb=20160819114721&path-prefix=fr"));
    save(Character("Monty", "Green", 19, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/2/23/MontyJordan.gif/revision/latest/scale-to-width-down/260?cb=20190327182709&path-prefix=fr"));
    save(Character("Thelonius", "Jaha", 52, SexEnum.BOY, "Chancellor",
        "https://static.wikia.nocookie.net/the-100/images/1/1a/Jaha_S4_Infobox.png/revision/latest/scale-to-width-down/333?cb=20190708142728&path-prefix=fr"));
    save(Character("Echo", "kom Azgeda", 23, SexEnum.GIRL, "",
        "https://static.wikia.nocookie.net/the-100/images/3/3b/Echo_S2_Infobox.png/revision/latest/scale-to-width-down/337?cb=20190609131158&path-prefix=fr"));
    save(Character("Lincoln", "kom Trikru", 28, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/2/25/Lincoln.gif/revision/latest/scale-to-width-down/160?cb=20150219230057&path-prefix=fr"));
    save(Character("Jackson", "Eric", 21, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/0/0f/Jackson_S2_Infobox.png/revision/latest/scale-to-width-down/324?cb=20190607190103&path-prefix=fr"));
    save(Character("Roan", "kom Azgeda", 30, SexEnum.BOY, "",
        "https://static.wikia.nocookie.net/the-100/images/d/d7/Roan.gif/revision/latest/scale-to-width-down/268?cb=20160207111822&path-prefix=fr"));
  }

  //endregion debug

  //region select
  List<Character> getAllCharacters() {
    return _listCharacter;
  }

  Character getCharacterById(int idCharacter) {
    List<Character> filteredList =
        _listCharacter.where((element) => element.id == idCharacter);
    if (filteredList.isNotEmpty) {
      return filteredList.first;
    } else {
      return null;
    }
  }

  //endregion select

  //region create
  void save(Character character) {
    int id = _generateId();
    character.id = id;

    _listCharacter.add(character);
  }

  int _generateId() {
    return new Random().nextInt(999999);
  }

  //endregion create

  //region delete
  void deleteCharacterById(int idCharacterToDelete) {
    Character characterToRemove = getCharacterById(idCharacterToDelete);
    if (characterToRemove != null) {
      _listCharacter.remove(idCharacterToDelete);
    }
  }
//endregion delete
}
