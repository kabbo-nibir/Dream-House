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
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(FontAwesomeIcons.bars,size: 15.0,color: Colors.black,),
            //tooltip: 'Show Snackbar',
            onPressed: () {},
          ),//
          title: Center(child: const Text(_title,style: TextStyle(color: Colors.black))),
          actions: <Widget>[
            IconButton(
              icon: const Icon(FontAwesomeIcons.search,size: 15.0,color: Colors.black,),
              //tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.bell,size: 15.0,color: Colors.black,),
//              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
        body: AppBody(),
      ),
    );
  }
}
