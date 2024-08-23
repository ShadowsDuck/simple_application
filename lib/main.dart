import 'package:flutter/material.dart';
import 'package:simple_application/screen/menu.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
      ),
      body: Menu(),
    ),
  ));
}
