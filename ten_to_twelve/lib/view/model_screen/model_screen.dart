import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ten_to_twelve/data/app_data.dart';
import 'package:ten_to_twelve/model/student_model.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({Key? key}) : super(key: key);

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  StudentModel? studentModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model Screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              studentModel = StudentModel.fromJson(studentData);
              debugPrint("studentModel --> ${jsonEncode(studentData)}");
            },
            child: const Text("Convert Data"),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: studentModel!.studentData!.length,
          //     itemBuilder: (context, index) => Text(
          //       studentModel!.studentData![index].id!.toString(),
          //       style: TextStyle(
          //         fontSize: 25,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
