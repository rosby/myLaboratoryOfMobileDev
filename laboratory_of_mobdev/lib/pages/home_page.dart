import 'package:flutter/material.dart';

import '../const.dart';
import '../localization/localization_configurator.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final localization = LocalizationConfig.currentLang();

  final buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(1),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
      ),
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 20),
    ),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'assets/images/logo2.png',
            width: 36,
            height: 36,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0.2),
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
                    alignment: const Alignment(0, 0.7),
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
