import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences_example/app/theme_service.dart';
import 'package:shared_preferences_example/module/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry s standard dummy text ever since the 1500s',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          Obx(
            () => Switch(
              activeColor: Colors.blue,
              value: ThemeService.instance.isDarkMode,
              onChanged: (value) => controller.switchThem(),
            ),
          ),
        ],
      ),
    );
  }
}
