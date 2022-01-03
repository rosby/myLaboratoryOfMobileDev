import 'dart:html';

import 'package:flutter/material.dart';

class FirstStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstStatefulWidgetState();
  }
}

class _FirstStatefulWidgetState extends State<FirstStatefulWidget> {
  bool? _loading;
  double? _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text('StateFull Widget');
  }
}
