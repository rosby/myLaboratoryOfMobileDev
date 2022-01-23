import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;

    var a = settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {
              Navigator.pop(context, '111');
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
          title: const Text(
            'Weather',
            style:
                TextStyle(color: Colors.black87, fontFamily: 'Quicksand-Bold'),
          ),
          iconTheme: const IconThemeData(color: Colors.black87),
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          _headerImage(),
          _weatherDescription(),
          const Divider(),
          _temperature(),
          _temperatureFuture(),
          const Divider(),
          _footerRating(),
        ],
      ),
    ),
  );
}

Widget _headerImage() {
  return Container(
    height: 220,
    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: Image.asset('assets/images/sunlight.jpg').image,
          fit: BoxFit.cover,
        )),
  );
}

Widget _weatherDescription() {
  return Padding(
    padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          'Tuesday - May 22',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Divider(),
        Text(
          'It will be rather cold during this day. The temperatures will be 2 — 5 below zero at night and 0 — 1 above zero in the daytime.',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
      ],
    ),
  );
}

Widget _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Icon(
            Icons.wb_sunny,
            size: 33,
            color: Colors.yellow.shade500,
          )
        ],
      ),
      const SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '2℃ Clear',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          Text(
            'Moscow oblast, Moscow',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          )
        ],
      )
    ],
  );
}

Widget _temperatureFuture() {
  var rnd = Random();

  return Padding(
    padding: const EdgeInsets.only(
      top: 7,
      bottom: 7,
    ),
    child: Wrap(
      spacing: 15,
      children: List.generate(8, (int i) {
        return Chip(
          avatar: getIcon(rnd.nextInt(2)),
          label: Text('${rnd.nextInt(7) + 20}℃'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.white,
        );
      }),
    ),
  );
}

Icon getIcon(int index) {
  switch (index) {
    case 0:
      return const Icon(Icons.wb_cloudy, color: Colors.lightBlue);
    case 1:
      return Icon(Icons.wb_sunny, color: Colors.yellow.shade500);
  }
  return const Icon(Icons.wb_iridescent);
}

Widget _footerRating() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'Info from weather.com',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black45,
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade700,
        size: 18,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade700,
        size: 18,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade700,
        size: 18,
      ),
      const Icon(
        Icons.star,
        size: 18,
      ),
      const Icon(
        Icons.star,
        size: 18,
      ),
    ],
  );
}
