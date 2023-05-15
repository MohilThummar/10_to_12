import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalData extends StatefulWidget {
  const LocalData({Key? key}) : super(key: key);

  @override
  State<LocalData> createState() => _LocalDataState();
}

class _LocalDataState extends State<LocalData> {
  SharedPreferences? prefs;
  String? stringData = "";
  int? intData = 0;

  setInstant() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    setInstant();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                prefs!.setString("name", "Mohil Thummar");
                prefs!.setString("last_name", "Thummar");
                prefs!.setInt("number", 1234);
              },
              child: const Text("Set Data"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (prefs!.containsKey("first_name")) {
                  debugPrint("Data");
                  stringData = prefs!.getString("name");
                  intData = prefs!.getInt("number");
                  setState(() {});
                } else {
                  debugPrint("No Data");
                }
              },
              child: const Text("Get Data"),
            ),
            const SizedBox(height: 15),
            Text(
              stringData!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              intData!.toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
