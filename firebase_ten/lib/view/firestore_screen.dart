import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ten/model/user_model.dart';
import 'package:flutter/material.dart';

class FireStoreScreen extends StatefulWidget {
  const FireStoreScreen({Key? key}) : super(key: key);

  @override
  State<FireStoreScreen> createState() => _FireStoreScreenState();
}

class _FireStoreScreenState extends State<FireStoreScreen> {
  List<UserModel> userData = [];

  final FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;

  storeData() {
    CollectionReference users = firebaseFireStore.collection('users');

    users.doc("4").set({
      'id': 4,
      'full_name': "Mohil Thummar",
      'company': "Skill Qode",
      'age': 21,
      'list_data': [1, 2, 3, 4, 5, 6],
    }).then((value) {
      debugPrint("User Added -->");
    }).catchError((error) {
      debugPrint("Failed to add user: $error");
    });
  }

  getData() {
    CollectionReference users = firebaseFireStore.collection('users');

    users.get().then((value) {
      debugPrint("User Added --> ${value.docs[1].data()}");

      for (var doc in value.docs) {
        setState(() {
          userData.add(UserModel.fromJson(doc.data() as Map<String, dynamic>));
        });
        debugPrint(jsonEncode(doc.data()));
      }

      debugPrint("UserData ${jsonEncode(userData)}");
    }).catchError((error) {
      debugPrint("Failed to add user: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FireStore Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: storeData,
              child: const Text("Send Data"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: getData,
              child: const Text("Get Data"),
            ),
            FutureBuilder(
              // future: firebaseFireStore.collection("users").where('id', isLessThan: 3).get(),
              // future: firebaseFireStore.collection("users").limit(3).get(),
              future: firebaseFireStore.collection("users").orderBy("id", descending: false).get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text("Something went wrong");
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  if (!snapshot.hasData) {
                    return const Text("Document does not exist");
                  }

                  List<QueryDocumentSnapshot<Map<String, dynamic>>> data = snapshot.data!.docs;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: Text(data[index]["id"].toString()),
                        title: Text("Name: ${data[index]["full_name"]}"),
                        subtitle: Text("Company: ${data[index]["company"]}"),
                      ),
                    ),
                  );
                }

                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
