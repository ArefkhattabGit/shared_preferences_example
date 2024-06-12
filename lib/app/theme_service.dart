import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService extends GetxController {
  static final instance = ThemeService();

  final RxBool _isDarkMode = false.obs;

  bool get isDarkMode => _isDarkMode.value;

   changeAppThemeMode() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
