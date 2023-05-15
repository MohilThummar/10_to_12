import 'package:flutter/material.dart';
import 'package:ten_to_twelve/view/dialog_box_and_sheet/sheet_screen.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  void initState() {
    // TODO: implement initState
    data();
    super.initState();
  }

  data() {
    Future.delayed(const Duration(milliseconds: 100), () {
      bottomSheetData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // bottomSheetData();
            showModalBottomSheet(
              context: context,
              // enableDrag: false,
              // isDismissible: false,
              isScrollControlled: true,
              useSafeArea: true,
              // elevation: 200,
              backgroundColor: Colors.transparent,
              barrierColor: Colors.transparent,
              builder: (context) => const SheetScreen(),
            );
          },
          child: const Text("Open Bottom Sheet"),
        ),
      ),
    );
  }

  bottomSheetData() {
    showModalBottomSheet(
      context: context,
      // enableDrag: false,
      // isDismissible: false,
      isScrollControlled: true,
      useSafeArea: true,
      // elevation: 200,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Container(
          height: 500,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Row(
            children: const [
              CloseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
