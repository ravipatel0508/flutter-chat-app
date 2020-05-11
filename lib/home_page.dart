import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice chat app'),
      ),
      body: SafeArea(child: ChatScreen()),
    );
  }
}
