import 'package:Sample_Characters/ui/home/HomePageBloc.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependenciesInjection() async {

  GetIt.I.registerFactory<HomePageBloc>( () => HomePageBloc());
}