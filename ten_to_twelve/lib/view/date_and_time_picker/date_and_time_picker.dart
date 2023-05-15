import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateAndTimePicker extends StatefulWidget {
  const DateAndTimePicker({Key? key}) : super(key: key);

  @override
  State<DateAndTimePicker> createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    debugPrint("picked ---->> $selectedDate");
    debugPrint("picked ---->> $picked");

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
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
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date And Time Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Date: ${DateFormat("Hms").format(DateTime.now())}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),
            Text(
              "Time: ${selectedTime.replacing(minute: 40, hour: 5)}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                selectDate(context);
              },
              child: const Text("Show Date Picker"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                selectTime(context);
              },
              child: const Text("Show Time Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
