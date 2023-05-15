import 'package:flutter/material.dart';

class ThirdRoutesScreen extends StatefulWidget {
  const ThirdRoutesScreen({Key? key}) : super(key: key);

  @override
  State<ThirdRoutesScreen> createState() => _ThirdRoutesScreenState();
}

class _ThirdRoutesScreenState extends State<ThirdRoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Third Screen"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
