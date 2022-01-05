import 'package:flutter/material.dart';

import '../const.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 45,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0.4),
                    child: Text(
                      localization.welcomeText,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Align(
                      alignment: const Alignment(0, -0.9),
                      child: Image.asset(
                        Const.startScreenImagePath,
                        width: 300,
                        height: 300,
                      )),
                  Align(
                    alignment: const Alignment(0, 0.8),
                    child: ElevatedButton(
                      child: Text(localization.enterButtonText),
                      style: buttonStyle,
                      onPressed: () {},
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(localization.byName),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
