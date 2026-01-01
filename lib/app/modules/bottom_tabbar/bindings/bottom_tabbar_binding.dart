import 'package:get/get.dart';

import '../controllers/bottom_tabbar_controller.dart';

class BottomTabbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomTabbarController>(
      () => BottomTabbarController(),
    );
  }
}
