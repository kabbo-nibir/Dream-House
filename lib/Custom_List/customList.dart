import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_two/Articale_Description/articale.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.category,
    this.title_1,
    this.publishDate,
    this.availFrom,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String category;
  final String title_1;
  final String publishDate;
  final String availFrom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(children: [
        SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.5,
                child: thumbnail,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: ArticleDescription(
                    title: title,
                    subtitle: subtitle,
                    category: category,
                    title_1: title_1,
                    publishDate: publishDate,
                    availFrom: availFrom,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 30.0,
          child: Row(
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.heart, /*color: Colors.red,*/
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.phone),
                ],
              ),
              Expanded(child: Text('')),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconInfo(
                    icon: Icon(FontAwesomeIcons.bed),
                    info: '2',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconInfo(
                    icon: Icon(FontAwesomeIcons.bath),
                    info: '2',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconInfo(
                    icon: Icon(Icons.zoom_out_map),
                    info: '2,000 Sqft',
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class IconInfo extends StatelessWidget {
  final Icon icon;
  final String info;
  const IconInfo({this.icon, this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 10.0,
        ),
        Text(info),
      ],
    );
  }
}
