import 'package:flutter/material.dart';

import 'MyApp.dart';
import 'dependencies_injection/DependenciesInjectionModule.dart';

void main() async {

  // init Dependencies injection
  await setupDependenciesInjection();

  runApp(MyApp());
}
