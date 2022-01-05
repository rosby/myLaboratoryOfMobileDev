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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Center(
                  child: Text(
                    localization.welcomeText,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                height: 100,
              ),
              Container(
                height: 380,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset(Const.startScreenImagePath).image)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  child: Text(localization.enterButtonText),
                  style: buttonStyle,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(localization.byName),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
