import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Message Screen"),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.drag_handle),
        ),
      ),
      drawer: Drawer(
        child: CloseButton(
          onPressed: () {
            scaffoldKey.currentState!.closeDrawer();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar());
              },
              child: const Text("Show Snack bar"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  // timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black45,
                  textColor: Colors.black26,
                  fontSize: 16.0,
                );
              },
              child: const Text("Show Toast Message"),
            ),
          ],
        ),
      ),
    );
  }

  SnackBar snackBar() {
    return SnackBar(
      content: const Text('Hi, I am a SnackBar!'),
      backgroundColor: (Colors.black54),
      elevation: 0,
      margin: const EdgeInsets.all(12),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      onVisible: () {
        debugPrint("onVisible ----->>> ");
      },
      // showCloseIcon: true,
      dismissDirection: DismissDirection.horizontal,
      action: SnackBarAction(
        label: 'dismiss',
        onPressed: () {},
      ),
    );
  }
}
