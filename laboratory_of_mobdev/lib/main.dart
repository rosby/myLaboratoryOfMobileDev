import 'package:flutter/material.dart';
import 'package:laboratory_of_mobdev/localization/localization_configurator.dart';
import 'package:laboratory_of_mobdev/pages/weather_page.dart';

import 'pages/home_page.dart';

void main() {
  startUp();
  runApp(const MyApp());
}

void startUp() {
  LocalizationConfig.setLanguageBySystemLocate();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(),
      home: MyHomePage(),
    );
  }
}
