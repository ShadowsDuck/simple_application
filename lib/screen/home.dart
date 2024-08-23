import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple App"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                // ignore: avoid_print
                print("Text Button Pressed");
              },
              child: const Text(
                "Text",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          const SizedBox(height: 15),
          FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber.shade100,
                foregroundColor: Colors.brown,
                elevation: 5, // เพิ่มเงาโดยการกำหนดความสูง
                shadowColor: Colors.grey, // กำหนดสีของเงา
              ),
              onPressed: () {
                // ignore: avoid_print
                print("Filled Button Pressed");
              },
              child: const Text("Filled",
                  style: TextStyle(color: Colors.black, fontSize: 20))),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Elevated Button Pressed");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.black,
              elevation: 5, // เพิ่มเงาโดยการกำหนดความสูง
              shadowColor: Colors.grey, // กำหนดสีของเงา
            ),
            child: const Text("Elevated"),
          ),
          const SizedBox(height: 15),
          OutlinedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Outlined Button Pressed");
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 2.0, color: Colors.red),
            ),
            child: const Text('Outlined'),
          ),
        ],
      )),
    );
  }
}
