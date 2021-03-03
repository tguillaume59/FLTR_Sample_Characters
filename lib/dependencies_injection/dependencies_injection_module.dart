import 'package:Sample_Characters/services/characters/database/my_database.dart';
import 'package:Sample_Characters/services/characters/repositories/character_repository.dart';
import 'package:Sample_Characters/services/characters/repositories/character_repositoryImpl.dart';
import 'package:Sample_Characters/ui/home/home_page_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependenciesInjection() async {
  GetIt.I.registerFactory<HomePageBloc>(() => HomePageBloc());
  GetIt.I.registerFactory<CharacterRepository>(() => CharacterRepositoryImpl());
  GetIt.I.registerSingleton<MyDatabase>(MyDatabase());
}
