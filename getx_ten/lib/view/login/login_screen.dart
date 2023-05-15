import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ten/utils/routes/routes_name.dart';
import 'package:getx_ten/view/home/home_binding.dart';
import 'package:getx_ten/view/home/home_screen.dart';
import 'package:getx_ten/view/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              color: Colors.red,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  debugPrint("data text");
                },
                child: Obx(() {
                  return Text(
                    "Int data --> ${controller.intData.value}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                height: 150,
                width: 250,
                color: Colors.red,
                alignment: Alignment.center,
                child: Obx(
                  () => controller.boolData.isTrue ? const Text("True") : const Text("False"),
                )),
            const SizedBox(height: 20),
            Obx(() {
              return Container(
                height: 150,
                width: 250,
                color: Colors.red,
                alignment: controller.boolData.isTrue ? Alignment.center : Alignment.bottomCenter,
                child: controller.boolData.isTrue ? const Text("True") : const Text("False"),
              );
            }),
            ElevatedButton(
              onPressed: () {
                // controller.dataCall();
                // controller.boolCall();
                // controller.update();

                Get.toNamed(RoutesName.homeScreen); // Push
                Get.to(const HomeScreen(), binding: HomeBinding()); // Push

                Get.back(); // pop

                Get.offAllNamed(RoutesName.homeScreen); // Remove Until

                Get.offNamed(RoutesName.homeScreen); // R
              },
              child: const Text("add"),
            ),
          ],
        ),
      ),
    );
  }
}
