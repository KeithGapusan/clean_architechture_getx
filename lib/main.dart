import 'package:clean_architechture_getx/app/util/dependency.dart';
import 'package:clean_architechture_getx/presentation/app.dart';
import 'package:flutter/material.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  // await initServices();
  runApp(App());
}

// initServices() async {
//   print('starting services ...');
//   await Get.putAsync(() => LocalStorageService().init());
//   print('All services started...');
// }
