import 'package:clean_architechture_getx/presentation/controllers/headline/headline_binding.dart';
import 'package:clean_architechture_getx/presentation/pages/headline/headline_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialRoute: "/",
      initialBinding: HeadlineBinding(),
      home: HeadlinePage(),
    );
  }
}
