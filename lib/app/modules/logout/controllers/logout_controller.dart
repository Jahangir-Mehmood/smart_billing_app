import 'package:smart_billing_app/constant/images.dart';
import 'package:smart_billing_app/constant/import.dart';

class LogoutController extends GetxController
    with GetTickerProviderStateMixin {

  final items = <Map<String, String>>[
    {'image': productImage4a, 'title': 'name'},
    {'image': productImage4b, 'title': 'dgd'},
    {'image': productImage4c, 'title': 'gfd'},
    {'image': productImage4d, 'title': 'htr'},
    {'image': productImage4e, 'title': 'lkk'},
  ];

  late List<AnimationController> controllers;

  @override
  void onInit() {
    super.onInit();

    controllers = List.generate(
      items.length,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      ),
    );

    for (int i = 0; i < controllers.length; i++) {
      Future.delayed(Duration(milliseconds: i * 120), () {
        controllers[i].forward();
      });
    }
  }

  @override
  void onClose() {
    for (var c in controllers) {
      c.dispose();
    }
    super.onClose();
  }
}
