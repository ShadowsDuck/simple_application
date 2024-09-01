import 'package:flutter/material.dart';
import 'package:simple_application/screen/latestRate.dart';

void main() {
  runApp(MaterialApp(
    title: "Exchange Currency",
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Exchange Currency"),
        ),
        body: const LatestRate()),
  ));
}
