import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/button/button_screen.dart';
import 'package:ten_to_twelve/view/navigator_routes/first_routes_screen.dart';
import 'package:ten_to_twelve/view/navigator_routes/secon_routes_screen.dart';
import 'package:ten_to_twelve/view/navigator_routes/third_routes_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/firstScreen': (context) => const FirstRoutesScreen(),
  '/secondScreen': (context) => const SecondRoutesScreen(),
  '/thirdScreen': (context) => const ThirdRoutesScreen(),
  '/ButtonScreen': (context) => const ButtonScreen(),
};
