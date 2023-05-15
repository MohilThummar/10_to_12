import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double text = MediaQuery.of(context).textScaleFactor;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: AppBar().preferredSize.height + MediaQuery.of(context).padding.top,
            color: Colors.cyan,
          ),
          SizedBox(height: MediaQuery.of(context).padding.top),
          Row(
            children: [
              Container(
                height: height * 0.3,
                width: width * 0.3,
                color: Colors.red,
                child: Column(
                  children: [
                    Text("height: ${MediaQuery.of(context).size.height * 0.3}"),
                    const SizedBox(height: 15),
                    Text("Width: ${MediaQuery.of(context).size.width * 0.3}"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.3,
                color: Colors.yellow,
              ),
            ],
          ),
          Text(
            "height: ${MediaQuery.of(context).size.height}",
            style: TextStyle(fontSize: text * 15),
          ),
          const SizedBox(height: 15),
          Text("Width: ${MediaQuery.of(context).size.width}"),
          const SizedBox(height: 15),
          Text("Top: ${MediaQuery.of(context).padding.top}"),
          const SizedBox(height: 15),
          Text("bottom: ${MediaQuery.of(context).padding.bottom}"),
          const SizedBox(height: 15),
          Text("left: ${MediaQuery.of(context).padding.left}"),
          const SizedBox(height: 15),
          Text("right: ${MediaQuery.of(context).padding.right}"),
        ],
      ),
    );
  }
}
