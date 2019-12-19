import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'TodoList App2',
        debugShowCheckedModeBanner: false,
        home: HomePage(key: homePageKey),
      );
}
