import 'package:flutter/material.dart';

class ListViewTwoScreen extends StatefulWidget {
  const ListViewTwoScreen({Key? key}) : super(key: key);

  @override
  State<ListViewTwoScreen> createState() => _ListViewTwoScreenState();
}

class _ListViewTwoScreenState extends State<ListViewTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Screen"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.deepPurple,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.yellow,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.amber,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.green,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.deepPurple,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.yellow,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.blue,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
