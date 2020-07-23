import 'package:flutter/material.dart';
import 'package:test_two/Custom_List/customList.dart';

/// This is the stateless widget that the main application instantiates.
class AppBody extends StatelessWidget {
  AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.pink),
            child: FlutterLogo(),
          ),
          title: 'House Name',
          title_1: 'BDT: 1,000',
          subtitle: 'Gulshan 2, Gulshan, Dhaka',
          category: 'Category',
          publishDate: 'September 2020',
          availFrom: 'Available From',
        ),

        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'Flutter 1.2 Release - Continual updates to the framework',
          title_1: 'BDT: 1,000',
          subtitle: 'Flutter once again improves and makes updates.',
          category: 'Category',
          publishDate: 'Feb 26',
          availFrom: 'Available From',
        ),
      ],
    );
  }
}
