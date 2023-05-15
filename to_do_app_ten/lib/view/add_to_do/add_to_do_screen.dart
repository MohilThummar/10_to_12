import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app_ten/model/to_do_model.dart';
import 'package:to_do_app_ten/res/common/app_button.dart';
import 'package:to_do_app_ten/res/common/app_contailer.dart';
import 'package:to_do_app_ten/res/common/app_text_field.dart';
import 'package:to_do_app_ten/res/constant/app_strings.dart';

class AddToDoScreen extends StatefulWidget {
  final List<ToDoModel>? toDoList;
  final int? index;
  const AddToDoScreen({Key? key, this.toDoList, this.index}) : super(key: key);

  @override
  State<AddToDoScreen> createState() => _AddToDoScreenState();
}

class _AddToDoScreenState extends State<AddToDoScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  bool? dateIsSelect = false;
  TimeOfDay selectedTime = TimeOfDay.now();
  bool? timeIsSelect = false;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    debugPrint("picked ---->> $selectedDate");
    debugPrint("picked ---->> $picked");

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      dateIsSelect = true;
      setState(() {});
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    debugPrint("picked ---->> $selectedTime");
    debugPrint("picked ---->> $picked");

    if (picked != null && picked != selectedTime) {
      selectedTime = picked;
      timeIsSelect = true;
      setState(() {});
    }
  }

  List<ToDoModel> toDoList = [];

  @override
  void initState() {
    // TODO: implement initState
    toDoList = widget.toDoList!;
    if (widget.index != null) {
      titleController.text = toDoList[widget.index!].title!;
      desController.text = toDoList[widget.index!].des!;

      selectedDate = DateFormat('d/M/y').parse(toDoList[widget.index!].date!);
      dateIsSelect = true;

      var hour = toDoList[widget.index!].time!.split(" ").first.split(":").first;
      var minute = toDoList[widget.index!].time!.split(" ").first.split(":")[1];
      selectedTime = TimeOfDay(hour: int.parse(hour), minute: int.parse(minute));
      timeIsSelect = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStings.addToDo),
        // title: Text(widget.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            AppTextField(
              controller: titleController,
              hintText: AppStings.enterTitle,
              labelText: AppStings.title,
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => selectDate(context),
              child: AppContainer(
                hintText: dateIsSelect! ? DateFormat.yMd().format(selectedDate) : "Select Date",
                isData: dateIsSelect!,
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => selectTime(context),
              child: AppContainer(
                hintText: timeIsSelect! ? selectedTime.format(context) : "Select Time",
                isData: timeIsSelect!,
              ),
            ),
            const SizedBox(height: 15),
            AppTextField(
              controller: desController,
              hintText: AppStings.enterDescription,
              labelText: AppStings.description,
              isDes: true,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                if (widget.index != null) {
                  toDoList[widget.index!] = ToDoModel(
                    title: titleController.text,
                    date: DateFormat.yMd().format(selectedDate),
                    time: selectedTime.format(context),
                    des: desController.text,
                  );
                } else {
                  toDoList.add(
                    ToDoModel(
                      title: titleController.text,
                      date: DateFormat.yMd().format(selectedDate),
                      time: selectedTime.format(context),
                      des: desController.text,
                    ),
                  );
                }
                Navigator.pop(context, toDoList);
              },
              child: const AppButton(
                width: 180,
                title: AppStings.addToDo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
