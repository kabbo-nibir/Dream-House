import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        appBar: AppBar(
          leading: Icon(FontAwesomeIcons.bars),
          title: Center(child: const Text(_title)),
          actions: <Widget>[
            IconButton(
              icon: const Icon(FontAwesomeIcons.search),
              tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.bell),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
        body: AppBody(),
      ),
    );
  }
}
