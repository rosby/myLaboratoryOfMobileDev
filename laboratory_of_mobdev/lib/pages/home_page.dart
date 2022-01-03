import 'package:flutter/material.dart';

import '../localization/localization_configurator.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final localization = LocalizationConfig.currentLang();

  final buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 20),
    ),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Container(
                child: Text(localization.welcomeText),
              ),
              flex: 4,
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: ElevatedButton(
                  child: Text(localization.enterButtonText),
                  style: buttonStyle,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
