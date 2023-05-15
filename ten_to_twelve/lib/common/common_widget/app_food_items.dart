import 'package:flutter/material.dart';

class AppFoodItems extends StatelessWidget {
  final String? image;
  final String? text;
  const AppFoodItems({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 125,
      width: 130,
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        image: DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 90,
            width: 130,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x00161616),
                  Color(0xFF161616),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              text!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                // fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
