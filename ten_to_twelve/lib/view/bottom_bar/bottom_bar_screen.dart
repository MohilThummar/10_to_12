import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int index = 0;

  List<Widget> screens = [
    Container(color: Colors.white),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
    Container(color: Colors.teal),
  ];

  List<String> items = [
    "1",
    "2",
    "3",
    "4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Bar")),
      body: screens[index],
      bottomSheet: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items
              .map(
                (value) => GestureDetector(
                  onTap: () {
                    index = int.parse(value) - 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: index == (int.parse(value) - 1) ? Colors.red : Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: Text(value),
                  ),
                ),
              )
              .toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // selectedLabelStyle: ,
        // unselectedLabelStyle: ,
        // selectedIconTheme: ,
        // unselectedIconTheme: ,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.black,
        // elevation: 0,

        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Alert",
            // backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmark",
            // backgroundColor: Colors.cyanAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
            // backgroundColor: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
