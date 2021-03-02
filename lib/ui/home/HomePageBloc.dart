import 'package:Sample_Characters/ui/common/base_classes/blocs/BaseBloc.dart';

class HomePageBloc implements BaseBloc{

  HomePageBloc();

  int _counter = 0;

  int getCounter() => _counter ;

  void incrementCounter(){
    _counter ++;
  }

  @override
  void dispose() {

  }

}