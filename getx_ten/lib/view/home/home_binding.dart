import 'package:get/get.dart';
import 'package:getx_ten/view/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    // TODO: implement dependencies
  }
}
