import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final String? hintText;
  final Function(String)? onChanged;
  final String Function(String?)? validator;

  const AppTextField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.textCapitalization,
    this.textInputAction,
    this.obscureText,
    this.hintText,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      autocorrect: false,
      autofocus: true,
      keyboardType: keyboardType ?? TextInputType.name,
      textAlignVertical: TextAlignVertical.center,
      textCapitalization: textCapitalization ?? TextCapitalization.words,
      textInputAction: textInputAction ?? TextInputAction.done,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      validator: validator,
      // onTap: ,
      // onTapOutside: ,
      // textAlign: TextAlign.center,
      // textDirection: TextDirection.ltr,
      // obscuringCharacter: "1",
      // maxLength: 5,
      // cursorColor: Colors.black,
      // cursorWidth: 5,
      // enabled: true,
      // keyboardAppearance: Brightness.dark,
      // maxLength: 10,
      // minLines: 5,
      // maxLines: 6,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText ?? "",
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(color: Colors.black, width: 3),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(color: Colors.pink, width: 3),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(color: Colors.orange, width: 3),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 3),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        //   borderSide: const BorderSide(color: Colors.purple, width: 3),
        // ),
        // labelText: "Email",
        // labelStyle: const TextStyle(
        //   fontSize: 20,
        //   color: Colors.red,
        // ),
        // icon: Icon(Icons.save_rounded),
        // suffixIcon: Icon(Icons.email),
        // suffix: Icon(Icons.account_circle),
        // prefix: Icon(Icons.account_circle),
        // prefixIcon: Icon(Icons.email),
        // suffixIconColor: Colors.red,
        // prefixIconColor: Colors.black,
        // counter: SizedBox(),
        // contentPadding: EdgeInsets.all(15),
        // counterStyle: const TextStyle(
        //   fontSize: 20,
        //   color: Colors.orange,
        // ),
        // counterText: "123",
        // fillColor: Colors.deepPurple,
        // iconColor: Colors.green,
        // contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
