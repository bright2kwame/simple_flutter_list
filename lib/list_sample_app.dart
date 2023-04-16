import 'package:flutter/material.dart';
import 'package:list_sample/list_page.dart';

class ListSampleApp extends StatelessWidget {
  const ListSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const ListPage(),
    );
  }
}
