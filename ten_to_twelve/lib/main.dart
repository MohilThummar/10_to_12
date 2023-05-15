import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/local_data/local_data_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // routes: routes,
      // initialRoute: '/ButtonScreen',
      home: LocalData(),
    );
  }
}

// FloatingActionButton
// BackButton
// CloseButton
// GestureDetector
// Inkwell
// IconButton
// ElevatedButton
// OutLineButton
// TextButton
// Switch
// CheckBoxButton
// DropDownButton
// PopupMenuButton
// RadioButton
// RadioListTileButton

// TextFiled
// Validator
// Bottom Sheet
// Dialog Box
// Alert Dialog Box (Cupertino, Material)
// Bottom Navigation Bar
// Snack Bar
// Time Picker
// Date Picker
// Plugin (ToastMessage, Slider, Image Picker)

// App Structure
// MediaQuery

// Modal (Data store, Data get)
// Local Storage (Shared Preferences)
/// Firebase (Auth, Firestore, Storage, StreamBuilder)
/// Api (RestApi, FutureBuilder)
/// GetX (Project Structure, Data management)
