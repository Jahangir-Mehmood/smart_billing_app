// scanner_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/app/routes/app_pages.dart';
import '../controllers/scanner_controller.dart';

class ScannerView extends GetView<ScannerController> {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Scanner',
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Logout sub-screen
            Get.toNamed(Routes.LOGOUT);
          },
          child: const Text('Go to Logout'),
        ),
      ),
    );
  }
}
