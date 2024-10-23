import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/logo/logo.png'),
          onPressed: () {
            // Get.offNamed(Routes.BOTTOMNAVIGATION);
          },
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Keluar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: const Center(
        child: Text(
          'HomeView',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
