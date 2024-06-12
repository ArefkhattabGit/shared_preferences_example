import 'package:get/get.dart';
import 'package:shared_preferences_example/app/theme_service.dart';

class HomeController extends GetxController {

   switchThem() {
    ThemeService.instance.changeAppThemeMode();
  }
}
