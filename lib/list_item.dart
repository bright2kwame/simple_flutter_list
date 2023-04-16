import 'package:flutter/material.dart';

class ListItem {
  String title;
  String subTitle;
  String? type;

  ListItem({required this.subTitle, required this.title, this.type});
}

abstract class BaseListItem {
  Widget itemView();
}

class HeaderItem implements BaseListItem {
  String title;

  HeaderItem({required this.title});

  @override
  Widget itemView() {
    return Container(
      color: Colors.blue,
    );
  }
}

class TextItem implements BaseListItem {
  String title;
  String subTitle;

  TextItem({required this.subTitle, required this.title});

  @override
  Widget itemView() {
    return Container(
      color: Colors.red,
    );
  }
}
