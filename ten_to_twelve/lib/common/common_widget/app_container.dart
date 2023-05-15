import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  final String? text;
  final Widget? child;

  const AppContainer({Key? key, this.color, this.height, this.text, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 120,
      width: 160,
      decoration: BoxDecoration(
        color: color ?? Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            text ?? "123",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          child ?? SizedBox(),
        ],
      ),
    );
  }
}
