import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/bottom_tabbar/controllers/bottom_tabbar_controller.dart';

class BasePageController extends GetxController {
final BottomTabbarController bottomTabbarController =
      Get.put(BottomTabbarController());
// final RxBool isVisible = RxBool(true);
final RxBool showBottomBar = RxBool(true);
  final RxBool showTopDesign = RxBool(true);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

}
