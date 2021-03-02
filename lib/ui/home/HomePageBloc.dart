import 'package:Sample_Characters/services/characters/MyDataBase.dart';
import 'package:get_it/get_it.dart';
import 'package:Sample_Characters/services/characters/models/Character.dart';
import 'package:Sample_Characters/ui/common/base_classes/blocs/BaseBloc.dart';

class HomePageBloc implements BaseBloc{

  HomePageBloc();

  MyDatabase _database = GetIt.I.get<MyDatabase>();

  List<Character> listCharacters = new List();

  void loadData(){
    listCharacters = _database.getAllCharacters();
  }

  @override
  void dispose() {

  }

}