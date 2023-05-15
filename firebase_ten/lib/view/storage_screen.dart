import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final ImagePicker picker = ImagePicker();
  XFile? photo;

  setImage() async {
    try {
      Reference ref = storage.ref();

      Reference imageRef = ref.child("images/${photo!.name}");

      File image = File(photo!.path);

      await imageRef.putFile(image);

      String url = await imageRef.getDownloadURL();

      debugPrint("File Url --> $url");
    } on FirebaseException catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Storage Screen"),
      ),
      body: Column(
        children: [
          if (photo != null)
            Image.file(
              File(photo!.path),
              height: 300,
              width: double.infinity,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  photo = await picker.pickImage(source: ImageSource.camera);
                  setState(() {});
                },
                child: const Text("Select Image"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () async {
                  setImage();
                },
                child: const Text("Store Image"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
