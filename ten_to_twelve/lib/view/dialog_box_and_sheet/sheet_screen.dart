import 'package:flutter/material.dart';

class SheetScreen extends StatelessWidget {
  const SheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: Row(
            children: [],
          ),
        ),
      ],
    );
  }
}
