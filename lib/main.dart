import 'package:clean_architechture_getx/app/util/dependency.dart';
import 'package:clean_architechture_getx/data/providers/environment/environment.dart';
import 'package:clean_architechture_getx/presentation/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  if (kReleaseMode) {
    await dotenv.load(fileName: Environment.mode);
    print('prod  ${Environment.mode}');
  } else {
    await dotenv.load(fileName: Environment.mode);
    print('dev ${Environment.mode}');
  }

  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
