import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassScreen extends StatelessWidget {
  String title;

  ClassScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFffaa5b),
      ),
      body: Center(child: Text(title)),
    );
  }
}
