import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_ten/model/user_model.dart';

class LoginController extends GetxController {
  RxInt intData = 0.obs;
  RxDouble doubleData = 0.0.obs;
  RxBool boolData = true.obs;
  RxString stringData = "".obs;

  Rx<UserModel> userModel = UserModel().obs;





  dataCall() {
    intData++;
    debugPrint(intData.toString());
  }

  boolCall() {
    boolData.value = !boolData.value;
    update();
  }
}
