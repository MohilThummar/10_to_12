import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_ten/utils/routes/routes_name.dart';
import 'package:getx_ten/view/home/home_binding.dart';
import 'package:getx_ten/view/home/home_screen.dart';
import 'package:getx_ten/view/login/login_bindings.dart';
import 'package:getx_ten/view/login/login_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>> getPages = [
    GetPage(name: RoutesName.loginScreen, page: () => const LoginScreen(), binding: LoginBindings()),
    GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
  ];
}
