import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'TodoList App2',
      debugShowCheckedModeBanner: false,
      home: HomePage(key: homePageKey),
    );
  }
}
