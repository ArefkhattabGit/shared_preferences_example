import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_example/app/app_constants.dart';

class HomeController extends GetxController {
  final RxBool _isDarkMode = false.obs;
  SharedPreferences? _prefs;

  @override
  void onInit() {
    super.onInit();
    _loadPreferences();
  }

  void _loadPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _isDarkMode.value = _prefs?.getBool(AppConstants.isDark) ?? false;
  }

  bool get isDarkMode => _isDarkMode.value;

  void changeAppThemeMode() {
    _isDarkMode.value = !_isDarkMode.value;
    _prefs!.setBool(AppConstants.isDark, _isDarkMode.value);
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
