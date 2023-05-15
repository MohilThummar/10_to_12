import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        reverse: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: Row(
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

        // child: Container(
        //   height: 800,
        //   width: 200,
        //   decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //     colors: [Colors.black, Colors.white],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   )),
        // ),
      ),
    );
  }
}
