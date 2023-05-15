import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  int tabIndex = 0;

  List<String> listData = ["Snacks", "Pizza", "Biryani", "Burgers", "Chinese", "Desserts", "Sweets", "North Indian", "South Indian"];

  List<String> imageData = ["assets/images/Snacks.png", "assets/images/Pizza.png", "assets/images/Biryani.png", "assets/images/Burgers.png", "assets/images/Chinese.png", "assets/images/Desserts.png", "assets/images/Sweets.png", "assets/images/North_Indian.png", "assets/images/South_Indian.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint("Index --> $index");
              tabIndex = index;
              setState(() {});
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: tabIndex == index ? Colors.yellow : Colors.green,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Image.asset(
                    imageData[index],
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    listData[index] + index.toString(),
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
