import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxScreen extends StatefulWidget {
  const DialogBoxScreen({Key? key}) : super(key: key);

  @override
  State<DialogBoxScreen> createState() => _DialogBoxScreenState();
}

class _DialogBoxScreenState extends State<DialogBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DialogBox"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // bottomSheetData();
            showDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text("Dialog Box"),
                content: Text("Dialog Box message are hear fsvd jcjs dvj jsd vjsd vj "),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Done"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                  )
                ],
              ),
            );
          },
          child: const Text("Open Dialog Sheet"),
        ),
      ),
    );
  }
}
