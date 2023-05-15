import 'package:flutter/material.dart';

class FirstRoutesScreen extends StatefulWidget {
  const FirstRoutesScreen({Key? key}) : super(key: key);

  @override
  State<FirstRoutesScreen> createState() => _FirstRoutesScreenState();
}

class _FirstRoutesScreenState extends State<FirstRoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/secondScreen");
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
