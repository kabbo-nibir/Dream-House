import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_two/Custom_List/customList.dart';

/// This is the stateless widget that the main application instantiates.
class AppBody extends StatelessWidget {
  AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5.0),
      children: <Widget>[
        CustomListItemTwo(
          widget: Container(
//            decoration: const BoxDecoration(color: Colors.pink),
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image(image: AssetImage('images/room.jpg'))),
          ),
          title: 'House Name',
          title_1: 'BDT: 1,000',
          subtitle: 'Gulshan 2, Gulshan, Dhaka',
          category: 'Category',
          publishDate: 'September 2020',
          availFrom: 'Available From',
        ),
        SizedBox(
            child: Container(
          height: 0.9,
          width: double.infinity,
          color: Colors.grey,
        )),
        CustomListItemTwo(
          widget: Container(
//            decoration: const BoxDecoration(color: Colors.blue),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image(
                image: AssetImage('images/interior.jpg'),
              ),
            ),
          ),
          title: 'House Name',
          title_1: 'BDT: 1,000',
          subtitle: 'House Name',
          category: 'Category',
          publishDate: 'Feb 26',
          availFrom: 'Available From',
        ),
        SizedBox(
            child: Container(
          height: 0.9,
          width: double.infinity,
          color: Colors.grey,
        )),
        CustomListItemTwo(
          widget: Container(
//            decoration: const BoxDecoration(color: Colors.pink),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image(
                image: AssetImage('images/couch.jpg'),
              ),
            ),
          ),
          title: 'House Name',
          title_1: 'BDT: 1,000',
          subtitle: 'Gulshan 2, Gulshan, Dhaka',
          category: 'Category',
          publishDate: 'September 2020',
          availFrom: 'Available From',
        ),
      ],
    );
  }
}
