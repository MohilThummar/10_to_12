import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  // Initial Switch Selected Value
  bool switchData = false;

  // Initial Check Box Selected Value
  bool checkBoxData = true;

  // Initial Selected Value
  String dropdownvalue = '1';

  // List of items in our dropdown menu
  List<String> items = ['1', '2', '3', '4', '5'];

  // Initial radio Selected Value
  bool radioData = true;

  // Initial radio list tile Value
  int radioListData = 1;
  List<int> radioListItems = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botton Screen"),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Floating Action Button: "),
              FloatingActionButton(
                onPressed: () {},
                tooltip: "Add Data",
                // hoverColor: Colors.yellow,
                splashColor: Colors.yellow,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Back Button: "),
              const BackButton(),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Close Button: "),
              const CloseButton(),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Gesture Detector Button: "),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Icon Button: "),
              IconButton(
                onPressed: () {},
                tooltip: "Add",
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Text Button: "),
              TextButton(
                onPressed: () {
                  debugPrint("onPressed");
                },
                onLongPress: () {
                  debugPrint("onLongPress");
                },
                child: const Text("Add Data"),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Cupertino Switch Button: "),
              CupertinoSwitch(
                value: switchData,
                onChanged: (value) {
                  debugPrint("onChanged --> $value");
                  switchData = value;
                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Check box Button: "),
              Transform.scale(
                scale: 3,
                child: Checkbox(
                  value: checkBoxData,
                  shape: const CircleBorder(),
                  checkColor: Colors.red,
                  overlayColor: MaterialStateProperty.all(Colors.red.shade300),
                  fillColor: MaterialStateProperty.all(Colors.yellow),
                  onChanged: (data) {
                    checkBoxData = data!;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Elevated Button: "),
              ElevatedButton(
                onPressed: () {
                  items.addAll(['Item 6', 'Item 7', 'Item 8', 'Item 9', 'Item 10']);
                  setState(() {});
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(150, 45)),
                ),
                child: const Text("Next Screen"),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Dropdown Button: "),
              DropdownButton<String>(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items
                    .map((String items) => DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        ))
                    .toList(),
                // items: const [
                //   DropdownMenuItem(
                //     value: "Item",
                //     child: Text("Item 1"),
                //   ),
                //   DropdownMenuItem(
                //     value: "Item 2",
                //     child: Text("Item 2"),
                //   ),
                //   DropdownMenuItem(
                //     value: "Item 3",
                //     child: Text("Item 3"),
                //   ),
                //   DropdownMenuItem(
                //     value: "Item 4",
                //     child: Text("Item 4"),
                //   ),
                //   DropdownMenuItem(
                //     value: "Item 5",
                //     child: Text("Item 5"),
                //   ),
                // ],

                onChanged: (String? newValue) {
                  debugPrint("newValue  --> $newValue");
                  dropdownvalue = newValue!;
                  setState(() {});
                },
                underline: Container(),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Outlined Button: "),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text("Next Screen"),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("PopupMenu Button: "),
              PopupMenuButton<String>(
                itemBuilder: (context) => items
                    .map((String items) => PopupMenuItem(
                          value: items,
                          child: Row(
                            children: [
                              const Icon(Icons.chrome_reader_mode),
                              const SizedBox(width: 10),
                              Text(items),
                            ],
                          ),
                        ))
                    .toList(),
                // [
                // PopupMenuItem(
                //   value: 1,
                //   child: Row(
                //     children: const [
                //       Icon(Icons.star),
                //       SizedBox(width: 10),
                //       Text("Get The App"),
                //     ],
                //   ),
                // ),
                // PopupMenuItem(
                //   value: 1,
                //   child: Row(
                //     children: const [
                //       Icon(Icons.star),
                //       SizedBox(width: 10),
                //       Text("Get The App"),
                //     ],
                //   ),
                // ),
                // ],
                offset: const Offset(0, 100),
                color: Colors.grey,
                elevation: 2,
                onSelected: (value) {
                  debugPrint("value  --> $value");
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appText("Radio Button: "),
              Radio<bool>(
                groupValue: radioData,
                value: true,
                onChanged: (newValue) {
                  debugPrint("value  --> $newValue");
                  radioData = newValue!;
                  setState(() {});
                },
              ),
              Radio<bool>(
                groupValue: radioData,
                value: false,
                onChanged: (bool? newValue) {
                  radioData = newValue!;
                  debugPrint("value  --> $newValue");
                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          appText("Radio ListTile Button: "),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: radioListItems.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: radioListItems[index],
                groupValue: radioListData,
                onChanged: (value) {
                  debugPrint("value  --> $value");
                  radioListData = value!;
                  setState(() {});
                },
                title: Text("Number ${radioListItems[index]}"),
              );
            },
          ),
          const SizedBox(height: 120),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("1234567890");
        },
        tooltip: "Add Data",
        // hoverColor: Colors.yellow,
        splashColor: Colors.yellow,

        child: const Icon(Icons.add),
      ),
    );
  }

  /// --------- Common Text widget -------------------->>>>
  Widget appText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
