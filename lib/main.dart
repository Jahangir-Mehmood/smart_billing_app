import 'package:smart_billing_app/constant/import.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      builder: (context, child) {
        RSize.init(context);
        return child ?? const SizedBox.shrink();
      },
    );
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
