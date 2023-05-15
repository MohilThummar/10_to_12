import 'package:flutter/material.dart';
import 'package:to_do_app_ten/model/to_do_model.dart';
import 'package:to_do_app_ten/res/common/app_button.dart';
import 'package:to_do_app_ten/res/constant/app_colors.dart';
import 'package:to_do_app_ten/res/constant/app_strings.dart';
import 'package:to_do_app_ten/view/add_to_do/add_to_do_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ToDoModel> toDoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStings.homeScreen),
      ),
      body: toDoList.isEmpty
          ? const Center(
              child: Text(
                "No Data Found",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : ListView.separated(
              itemCount: toDoList.length,
              padding: const EdgeInsets.all(15),
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title: ${toDoList[index].title}",
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          toDoList[index].des!,
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          toDoList[index].date!,
                          style: const TextStyle(
                            color: AppColors.textHintColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          toDoList[index].time!,
                          style: const TextStyle(
                            color: AppColors.textHintColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                dynamic data = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddToDoScreen(
                                      toDoList: toDoList,
                                      index: index,
                                    ),
                                  ),
                                );

                                if (data != null) {
                                  debugPrint("Data --> $data");
                                  toDoList = data;
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                toDoList.removeAt(index);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      floatingActionButton: GestureDetector(
        onTap: () async {
          dynamic data = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddToDoScreen(
                toDoList: toDoList,
              ),
            ),
          );

          if (data != null) {
            debugPrint("Data --> $data");
            toDoList = data;
            setState(() {});
          }
        },
        child: const AppButton(
          title: AppStings.addToDo,
        ),
      ),
    );
  }
}
