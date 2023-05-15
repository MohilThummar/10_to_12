import 'package:get/get.dart';
import 'package:getx_ten/view/login/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    // TODO: implement dependencies
  }
}
