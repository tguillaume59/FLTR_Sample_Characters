import 'package:flutter/material.dart';

import 'my_app.dart';
import 'dependencies_injection/dependencies_injection_module.dart';

void main() async {

  // init Dependencies injection
  await setupDependenciesInjection();

  runApp(MyApp());
}
