// // base_page_view.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smart_billing_app/controllers/theme_controller.dart';
// import 'package:smart_billing_app/domain/Widgets/appbar/appbar.dart';
// import 'package:smart_billing_app/domain/Widgets/appdrawer/appdrawer.dart';

// class BasePageView extends StatelessWidget {
//   const BasePageView({
//     super.key,
//     required this.title,
//     required this.child,
//     this.showAppBar = true,
//     this.showDrawer = false,
//     this.showBottomNav = true,
//     this.showBackArrow = false,
//     this.actions,
//   });

//   final String title;
//   final Widget child;
//   final bool showAppBar;
//   final bool showDrawer;
//   final bool showBottomNav;
//   final bool showBackArrow;
//   final List<Widget>? actions;

//   @override
//   Widget build(BuildContext context) {
//     final themeController = Get.find<ThemeController>();
//     final tabController = Get.put(BottomTabControllerX());

//     // Update current tab based on route
//     tabController.updateTabFromRoute(Get.currentRoute);

//     return Scaffold(
//       drawer: showDrawer ? const UAppDrawer() : null,
//       appBar: showAppBar
//           ? UAppBar(
//               title: title,
//               backgroundColor: themeController.primaryColor.value,
//               textColor: Colors.white,
//               showDrawer: showDrawer,
//               showBackArrow: showBackArrow && !showDrawer,
//               actions: actions,
//             )
//           : null,
//       body: child,
//       bottomNavigationBar: showBottomNav
//           ? Obx(
//               () => BottomNavigationBar(
//                 currentIndex: tabController.currentIndex.value,
//                 type: BottomNavigationBarType.fixed,
//                 selectedItemColor: themeController.primaryColor.value,
//                 unselectedItemColor: Colors.grey,
//                 onTap: tabController.goToMainScreen,
//                 items: bottomTabs
//                     .map((tab) => BottomNavigationBarItem(
//                           icon: tab.icon,
//                           label: tab.label,
//                         ))
//                     .toList(),
//               ),
//             )
//           : null,
//     );
//   }
// }

// // Bottom tab config
// enum BottomTab { bills, dashboard, settings, scan }

// class BottomTabItem {
//   final String route;
//   final String label;
//   final Icon icon;
//   const BottomTabItem({required this.route, required this.label, required this.icon});
// }

// const List<BottomTabItem> bottomTabs = [
//   BottomTabItem(route: '/bills', label: 'Bills', icon: Icon(Icons.receipt_long)),
//   BottomTabItem(route: '/dashboard', label: 'Dashboard', icon: Icon(Icons.dashboard)),
//   BottomTabItem(route: '/settings', label: 'Settings', icon: Icon(Icons.settings)),
//   BottomTabItem(route: '/scanner', label: 'Scan', icon: Icon(Icons.scanner)),
// ];

// // Controller
// class BottomTabControllerX extends GetxController {
//   RxInt currentIndex = 0.obs;

//   void updateTabFromRoute(String route) {
//     final index = bottomTabs.indexWhere((tab) => route.startsWith(tab.route));
//     if (index != -1) currentIndex.value = index;
//   }

//   void goToMainScreen(int index) {
//     final mainRoute = bottomTabs[index].route;
//     currentIndex.value = index;

//     if (Get.currentRoute == mainRoute) {
//       // Already on main screen → do nothing
//       return;
//     }

//     // Agar current route sub-screen hai → replace current screen with main
//     if (Get.currentRoute.startsWith(mainRoute)) {
//       Get.offNamed(mainRoute);
//     } else {
//       // Different tab → go to main screen of that tab
//       Get.offAllNamed(mainRoute);
//     }
//   }
// }




// base_page_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:smart_billing_app/app/modules/scanner/views/scanner_view.dart';
import 'package:smart_billing_app/controllers/theme_controller.dart';
import 'package:smart_billing_app/domain/Widgets/appbar/appbar.dart';
import 'package:smart_billing_app/domain/Widgets/appdrawer/appdrawer.dart';



class BasePageView extends StatelessWidget {
  const BasePageView({
    super.key,
    required this.title,
    required this.child,
    this.showAppBar = true,
    this.showDrawer = false,
    this.showBackArrow = false,
    this.actions,
  });

  final String title;
  final Widget child;
  final bool showAppBar;
  final bool showDrawer;
  final bool showBackArrow;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      drawer: showDrawer ? const UAppDrawer() : null,
      appBar: showAppBar
          ? UAppBar(
              title: title,
              backgroundColor: themeController.primaryColor.value,
              textColor: Colors.white,
              showDrawer: showDrawer,
              showBackArrow: showBackArrow && !showDrawer,
              actions: actions,
            )
          : null,
      body: child,
      // NO bottomNavigationBar here - it's in MainWrapper
    );
  }
}

// Bottom tab config
enum BottomTab { bills, dashboard, settings, scan }

class BottomTabItem {
  final String route;
  final String label;
  final Icon icon;
  const BottomTabItem({required this.route, required this.label, required this.icon});
}

const List<BottomTabItem> bottomTabs = [
  BottomTabItem(route: '/bills', label: 'Bills', icon: Icon(Icons.receipt_long)),
  BottomTabItem(route: '/dashboard', label: 'Dashboard', icon: Icon(Icons.dashboard)),
  BottomTabItem(route: '/settings', label: 'Settings', icon: Icon(Icons.settings)),
  BottomTabItem(route: '/scanner', label: 'Scan', icon: Icon(Icons.scanner)),
];

// Controller
class BottomTabControllerX extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateTabFromRoute(String route) {
    final index = bottomTabs.indexWhere((tab) => route.startsWith(tab.route));
    if (index != -1) currentIndex.value = index;
  }

  void goToMainScreen(int index) {
    final mainRoute = bottomTabs[index].route;
    currentIndex.value = index;

    if (Get.currentRoute == mainRoute) {
      // Already on main screen → do nothing
      return;
    }

    // Agar current route sub-screen hai → replace current screen with main
    if (Get.currentRoute.startsWith(mainRoute)) {
      Get.offNamed(mainRoute);
    } else {
      // Different tab → go to main screen of that tab
      Get.offAllNamed(mainRoute);
    }
  }
}
class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomTabControllerX(), permanent: true);
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      // IndexedStack tabs ko memory mein rakhta hai aur flicker nahi hone deta
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: [
              const ScannerView(),     // Index 0
              DashboardView(), // Index 1
              DashboardView(),  // Index 2
              const ScannerView(),   // Index 3
            ],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: themeController.primaryColor.value,
            unselectedItemColor: Colors.grey,
            onTap: (index) => controller.currentIndex.value = index,
            items: bottomTabs
                .map((tab) => BottomNavigationBarItem(
                      icon: tab.icon,
                      label: tab.label,
                    ))
                .toList(),
          )),
    );
  }
}