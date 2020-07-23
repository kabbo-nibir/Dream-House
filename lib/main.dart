import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_two/Main_Body/mainBody.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Dream House';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: AppBody(),
      ),
    );
  }
}
