import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:list_sample/list_item.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<ListItem> items = [
    ListItem(subTitle: "Its the sub", title: "Its the main"),
    ListItem(subTitle: "Its the sub", title: "Its the main"),
    ListItem(subTitle: "Its the sub", title: "Its the main", type: "H"),
    ListItem(subTitle: "Its the sub", title: "Its the main"),
    ListItem(subTitle: "Its thxe sub", title: "Its the main")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample List"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, position) {
              ListItem item = items[position];
              if (item.type == null) {
                return _itemView(item);
              } else {
                return _headerView(item);
              }
            }) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _headerView(ListItem item) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16.0),
      child: Text(item.title),
    );
  }

  Widget _itemView(ListItem item) {
    return ListTile(
      leading: TextAvatar(
        textColor: Colors.white,
        shape: Shape.Rectangle,
        text: item.title,
        numberLetters: 1,
      ),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
  }
}
