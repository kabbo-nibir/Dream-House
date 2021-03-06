import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleDescription extends StatelessWidget {
  ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.category,
    this.title_1,
    this.publishDate,
    this.availFrom,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String category;
  final String title_1;
  final String publishDate;
  final String availFrom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
//          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$category',
                style:  const TextStyle(
                  fontSize: 10.0,
                   color: Color.fromRGBO(189, 189, 189, 74),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12.0,
                color: Colors.black),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$subtitle',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10.0,
                  color: Color.fromRGBO(189, 189, 189, 74),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '$title_1',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              Text(
                '$availFrom : $publishDate',
                style: const TextStyle(
                  fontSize: 10.0,
                  color: Color.fromRGBO(189, 189, 189, 74),
                ),
              ),
            ],
          ),
        ),
//        Expanded(
//          flex: 1,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.end,
//            children: <Widget>[
//
//            ],
//          ),
//        ),
      ],
    );
  }
}
