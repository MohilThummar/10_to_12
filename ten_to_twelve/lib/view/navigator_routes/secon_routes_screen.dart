import 'package:flutter/material.dart';

class SecondRoutesScreen extends StatefulWidget {
  const SecondRoutesScreen({Key? key}) : super(key: key);

  @override
  State<SecondRoutesScreen> createState() => _SecondRoutesScreenState();
}

class _SecondRoutesScreenState extends State<SecondRoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/thirdScreen");
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
