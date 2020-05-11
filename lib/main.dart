import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice chat app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}
