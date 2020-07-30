import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_two/Articale_Description/articale.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.widget,
    this.title,
    this.subtitle,
    this.category,
    this.title_1,
    this.publishDate,
    this.availFrom,
  }) : super(key: key);

  final Widget widget;
  final String title;
  final String subtitle;
  final String category;
  final String title_1;
  final String publishDate;
  final String availFrom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
      child: Column(children: [
        SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.5,
                child: widget,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 7.0, 2.0, 0.0),
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
          height: 40.0,
          child: Row(
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.phone,
                    size: 15.0,
                  ),
                ],
              ),
              Expanded(child: Text('')),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconInfo(
                    icon: Icon(FontAwesomeIcons.bed,
                        size: 15.0, color: Color.fromRGBO(130, 130, 130, 0.5)),
                    info: '2',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconInfo(
                    icon: Icon(FontAwesomeIcons.bath,
                        size: 15.0, color: Color.fromRGBO(130, 130, 130, 0.5)),
                    info: '2',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconInfo(
                    icon: Icon(Icons.zoom_out_map,
                        size: 15.0, color: Color.fromRGBO(130, 130, 130, 0.5)),
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
