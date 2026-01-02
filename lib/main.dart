import 'package:smart_billing_app/constant/import.dart';
import 'package:smart_billing_app/controllers/theme_controller.dart';

void main() {
  // ThemeController initialize
  final themeController = Get.put(ThemeController());

  // Yaha se default app color set karo
  themeController.setPrimaryColor(createMaterialColor(Color(0xff3ac8eb)));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: themeController.themeData,
          builder: (context, child) {
            return child ?? const SizedBox.shrink();
          },
        ));
  }
  
}



// void main() {
//   runApp(
//     GetMaterialApp(
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//       builder: (context, child) {
//         RSize.init(); // ✅ yahin lagayen
//         return child!;
//       },
//     ),
//     // GetMaterialApp(
//     //   title: "Smart Billing App",
//     //   debugShowCheckedModeBanner: false,
//     //   initialRoute: AppPages.INITIAL,
//     //   getPages: AppPages.routes,
//     //   defaultTransition: Transition.fade,
//     //   // Enable logging
//     //   enableLog: true,
//     //   logWriterCallback: (String text, {bool isError = false}) {
//     //     print("📱 GETX LOG: $text");
//     //   },
//     // ),
  
//   );
// }
