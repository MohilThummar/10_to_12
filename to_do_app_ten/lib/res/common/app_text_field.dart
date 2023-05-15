import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputAction? textInputAction;
  final bool? isDes;

  const AppTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.textInputAction,
    this.isDes = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      minLines: isDes! ? 4 : 1,
      maxLines: isDes! ? 4 : 1,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        labelText: labelText ?? "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
