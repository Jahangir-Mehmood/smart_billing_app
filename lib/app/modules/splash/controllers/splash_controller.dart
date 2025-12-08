import 'package:get/get.dart';
import 'package:smart_billing_app/app/routes/app_pages.dart';

class SplashController extends GetxController {

@override
  void onReady() {
    super.onReady();
    checkFunc();
  }

  void checkFunc() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(Routes.HOME);
  }
}