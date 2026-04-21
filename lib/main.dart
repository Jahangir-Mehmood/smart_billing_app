// main.dart
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/constant/import.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart Billing',
      initialBinding: AppBindings(),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomTabControllerX(), fenix: true);
    // Add other controllers here
  }
}