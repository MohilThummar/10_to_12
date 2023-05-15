import 'package:flutter/material.dart';
import 'package:ten_to_twelve/common/common_widget/app_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
      ),
      body: Column(
        children: [
          const AppContainer(
            height: 50,
            color: Colors.red,
            text: "123456789",
            child: Text("dnlvbnskjvbndkfvb"),
          ),
          const AppContainer(
            height: 100,
            color: Colors.blue,
            text: "1234",
            child: Icon(Icons.co2),
          ),
          const AppContainer(),
          const AppContainer(),
        ],
      ),
    );
  }
}
