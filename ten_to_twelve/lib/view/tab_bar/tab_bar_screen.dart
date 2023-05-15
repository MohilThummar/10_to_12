import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/tab_bar/tab_one_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar Screen"),
          bottom: const TabBar(
            unselectedLabelColor: Colors.red,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            labelStyle: TextStyle(fontSize: 25),
            dividerColor: Colors.yellow,
            isScrollable: true,
            automaticIndicatorColorAdjustment: true,
            overlayColor: MaterialStatePropertyAll(Colors.amber),
            tabs: [
              Tab(
                icon: Icon(Icons.ac_unit, size: 20),
              ),
              Tab(
                icon: Icon(Icons.abc_rounded, size: 20),
              ),
              Tab(
                icon: Icon(Icons.access_alarms_outlined, size: 20),
              ),
              Tab(
                icon: Icon(Icons.access_time_rounded, size: 20),
              ),
              Tab(
                icon: Icon(Icons.accessible_forward, size: 20),
              ),
              Tab(
                icon: Icon(Icons.account_circle, size: 20),
              ),
              Tab(
                text: "Two",
              ),
              Tab(
                text: "Three",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const ClampingScrollPhysics(),
          children: [
            const TabOneScreen(),
            Container(color: Colors.yellow),
            Container(color: Colors.blue),
            Container(color: Colors.blue),
            Container(color: Colors.blue),
            Container(color: Colors.blue),
            Container(color: Colors.blue),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
