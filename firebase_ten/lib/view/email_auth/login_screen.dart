import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ten/view/email_auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
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
            Text(
              "User data --> ${user!.email}",
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              ),
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }

  login() async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
        debugPrint("User Data --> ${value.user}");

        if (value.user!.emailVerified) {
          user = value.user;
          debugPrint("User has login --> ");
        } else {
          // show dialog about verification
        }

        setState(() {});
      });
    } on FirebaseAuthException catch (error) {
      debugPrint("Error Code --> ${error.code}");
      debugPrint("Error message --> ${error.message}");
    }
  }
}
