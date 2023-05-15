import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWheelScrollViewScreen extends StatefulWidget {
  const ListWheelScrollViewScreen({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewScreen> createState() => _ListWheelScrollViewScreenState();
}

class _ListWheelScrollViewScreenState extends State<ListWheelScrollViewScreen> {
  List reminderVal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Wheel Scroll View")),
      // body: Container(
      //   color: Colors.red,
      //   child: ListWheelScrollView.useDelegate(
      //     itemExtent: 75,
      //     perspective: 0.006,
      //     diameterRatio: 2,
      //     physics: FixedExtentScrollPhysics(),
      //     childDelegate: ListWheelChildBuilderDelegate(
      //       childCount: 15,
      //       builder: (context, index) => Container(
      //         color: Colors.deepPurple,
      //         child: const ListTile(
      //           leading: Icon(Icons.local_activity, size: 50),
      //           title: Text('Activity'),
      //           subtitle: Text('Description here'),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: Container(
        color: Colors.amber,
        child: Row(
          children: [
            SizedBox(
              width: 90,
              child: CupertinoPicker(
                  scrollController: FixedExtentScrollController(initialItem: 5),
                  itemExtent: 50,
                  backgroundColor: Colors.yellow,
                  magnification: 1.2,
                  diameterRatio: 0.9,
                  // looping: true,
                  selectionOverlay: Column(
                    children: [
                      Container(
                        height: 2,
                        width: 90,
                        color: Colors.red,
                      ),
                      const Spacer(),
                      Container(
                        height: 2,
                        width: 90,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  onSelectedItemChanged: (int index) {
                    debugPrint(index.toString());
                    setState(() {});
                  },
                  children: reminderVal
                      .map((item) => Center(
                            child: Text(
                              item.toString(),
                              style: const TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ))
                      .toList()),
            ),
            const Text(
              "CM",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
