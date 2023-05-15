import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/navigator/secon_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => SecondScreen(),
                ),
                // (route) => false,
              );
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
