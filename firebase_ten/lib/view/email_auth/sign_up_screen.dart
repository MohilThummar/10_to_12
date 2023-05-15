import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? userCredential;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Text(
            //   "User data --> ${userCredential!}",
            //   style: const TextStyle(
            //     fontSize: 22,
            //   ),
            // ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                signUpUser();
              },
              child: const Text("SignUp"),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  signUpUser() async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
        userCredential = value.user;
        debugPrint("User Data --> ${value.user}");
        value.user!.sendEmailVerification();
        setState(() {});
      });
    } on FirebaseAuthException catch (error) {
      debugPrint("code --> ${error.code}");
      debugPrint("message --> ${error.message}");
    }
  }
}
