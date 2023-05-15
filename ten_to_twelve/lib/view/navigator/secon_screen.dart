import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/navigator/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Second Screen"),
      ),
      body: Column(
        children: [
          const BackButton(),
          const CloseButton(),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => const ThirdScreen(),
                ),
              );
            },
            child: Container(
              height: 100,
              width: 100,
              // color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
