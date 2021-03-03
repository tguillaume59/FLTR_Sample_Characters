import 'package:Sample_Characters/services/characters/database/my_database.dart';
import 'package:Sample_Characters/services/characters/repositories/character_repository.dart';
import 'package:Sample_Characters/services/characters/repositories/character_repositoryImpl.dart';
import 'package:Sample_Characters/ui/home/home_screen_bloc.dart';
import 'package:Sample_Characters/ui/profile/profile_screen_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependenciesInjection() async {

  // ----- View models -----
  GetIt.I.registerFactory<HomeScreenBloc>(() => HomeScreenBloc());
  GetIt.I.registerFactory<ProfileScreenBloc>(() => ProfileScreenBloc());

  // ----- Repositories -----
  GetIt.I.registerFactory<CharacterRepository>(() => CharacterRepositoryImpl());

  // ----- Database -----
  GetIt.I.registerSingleton<MyDatabase>(MyDatabase());
}
