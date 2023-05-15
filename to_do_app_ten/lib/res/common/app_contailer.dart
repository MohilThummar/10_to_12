import 'package:flutter/material.dart';
import 'package:to_do_app_ten/res/constant/app_colors.dart';

class AppContainer extends StatelessWidget {
  final String? hintText;
  final bool? isData;
  const AppContainer({Key? key, this.hintText, this.isData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.hintColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        hintText ?? "",
        style: TextStyle(
          color: isData! ? AppColors.textColor : AppColors.textHintColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
