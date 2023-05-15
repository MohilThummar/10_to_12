import 'dart:convert';

import 'package:api_ten/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Dio dio = Dio();

  List<UserModel>? userModel;

  @override
  void initState() {
    // TODO: implement initState
    getApiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Api Call"),
      ),
      body: (userModel != null)
          ? ListView.separated(
              itemCount: userModel!.length,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  // putApiCall();
                  // postApiCall();
                  deleteApiCall();
                },
                leading: ClipOval(
                  child: Image.network(userModel![index].avatar!),
                ),
                tileColor: Colors.grey.shade300,
                title: Text(userModel![index].name!),
                subtitle: Text(userModel![index].address!),
                trailing: Text(userModel![index].id.toString()),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  getApiCall() async {
    await dio.get('https://644c9ed557f12a1d3dce10ab.mockapi.io/api/v1/user').then((value) {
      debugPrint("Value --> $value");
      if (value.statusCode == 200) {
        userModel = userModelFromJson(jsonEncode(value.data));
        setState(() {});
      } else if (value.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    });
  }

  putApiCall() async {
    final FormData formData = FormData.fromMap({
      "name": "Julius",
      "id": "1",
    });

    await dio
        .put(
      'https://644c9ed557f12a1d3dce10ab.mockapi.io/api/v1/user/1',
      data: formData,
    )
        .then((value) {
      debugPrint("Value --> $value");
      if (value.statusCode == 200) {
        // userModel = userModelFromJson(jsonEncode(value.data));
        setState(() {});
      } else if (value.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    });
  }

  postApiCall() async {
    final FormData formData = FormData.fromMap({
      "createdAt": "2023-04-28T08:40:51.913Z",
      "name": "Sonja Kulas",
      "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/241.jpg",
      "address": "356",
      "company_name": "Funk, Collier and Hessel",
      "id": "22",
    });

    await dio
        .post(
      'https://644c9ed557f12a1d3dce10ab.mockapi.io/api/v1/user',
      data: formData,
    )
        .then((value) {
      debugPrint("Value --> $value");
      if (value.statusCode == 200) {
        // userModel = userModelFromJson(jsonEncode(value.data));
        setState(() {});
      } else if (value.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    });
  }

  deleteApiCall() async {
    await dio.delete('https://644c9ed557f12a1d3dce10ab.mockapi.io/api/v1/user/5').then((value) {
      debugPrint("Value --> $value");
      if (value.statusCode == 200) {
        // userModel = userModelFromJson(jsonEncode(value.data));
        setState(() {});
      } else if (value.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    });
  }
}
