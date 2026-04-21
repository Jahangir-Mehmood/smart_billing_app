import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_wrapper_controller.dart';

class MainWrapperView extends GetView<MainWrapperController> {
  const MainWrapperView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainWrapperView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MainWrapperView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
