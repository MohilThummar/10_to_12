import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/text_field/app_text_field.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Screen"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(15),
          children: [
            AppTextField(
              controller: nameController,
              hintText: "Full Name",
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                  return "";
                } else {
                  return "Please enter valid email";
                }
                // if (value == "123") {
                // } else {
                // }
              },
            ),
            const SizedBox(height: 15),
            AppTextField(
              controller: emailController,
              hintText: "Email",
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 15),
            AppTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                formKey.currentState!.validate();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
