import 'package:Sample_Characters/services/characters/database/MyDataBase.dart';
import 'package:Sample_Characters/services/characters/repositories/CharacterRepository.dart';
import 'package:Sample_Characters/services/characters/repositories/CharacterRepositoryImpl.dart';
import 'package:Sample_Characters/ui/home/HomePageBloc.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependenciesInjection() async {
  GetIt.I.registerFactory<HomePageBloc>(() => HomePageBloc());
  GetIt.I.registerFactory<CharacterRepository>(() => CharacterRepositoryImpl());
  GetIt.I.registerSingleton<MyDatabase>(MyDatabase());
}
