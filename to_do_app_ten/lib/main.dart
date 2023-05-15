import 'package:flutter/material.dart';
import 'package:to_do_app_ten/res/constant/app_colors.dart';
import 'package:to_do_app_ten/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.materialColor,
      ),
      home: const SplashScreen(),
    );
  }
}
