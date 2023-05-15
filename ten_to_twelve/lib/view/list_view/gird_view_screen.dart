import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List listOfColor = [
    {"name": "Tom", "age": "22", "color": Colors.red},
    {"name": "Tom", "age": "22", "color": Colors.yellow},
    {"name": "Tom", "age": "22", "color": Colors.blue},
    {"name": "Tom", "age": "22", "color": Colors.pink},
    {"name": "Tom", "age": "22", "color": Colors.deepOrange},
    {"name": "Tom", "age": "22", "color": Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: Column(
        children: listOfColor.map((value) {
          debugPrint("value ---> $value");
          return Container(
            height: 100,
            width: double.infinity,
            color: value['color'],
            child: Row(
              children: [
                Text("Name: ${value['name']}", style: const TextStyle(fontSize: 22)),
                const SizedBox(width: 15),
                Text("Age: ${value['age']}", style: const TextStyle(fontSize: 22)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
