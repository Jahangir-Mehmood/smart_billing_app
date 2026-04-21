import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/constant/import.dart';

import '../controllers/splash_controller.dart';

// class SplashView extends GetView<SplashController> {
//   const SplashView({super.key});
//   @override
//   @override
//   Widget build(BuildContext context) {
//     Get.put(SplashController());
//     return Scaffold(
//       body: Container(
//         height: Get.size.height,
//         width: Get.size.width,
//         decoration: BoxDecoration(color: Colors.white),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset('assets/splash/black_app_logo.png', width: cS(200), height: 200),
//             const SizedBox(height: 20),
//             const Text('Billing App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }
class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return BasePageView(title: 'SPLASH', child: Center(child: Text('SPLASH')));
  }
}
