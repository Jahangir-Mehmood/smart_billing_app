import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:smart_billing_app/app/modules/scanner/views/scanner_view.dart';
import 'package:smart_billing_app/constant/import.dart';

class MainWrapperController extends GetxController {
  RxInt currentIndex = 0.obs;
  
  // Tabs configuration with their pages
  final List<Map<String, dynamic>> tabs = [
    {
      'route': '/bills',
      'label': 'Bills',
      'icon': Icons.receipt_long,
      // 'page': () => BillsView(),
    },
    {
      'route': '/dashboard',
      'label': 'Dashboard',
      'icon': Icons.dashboard,
      'page': () => DashboardView(),
    },
    {
      'route': '/settings',
      'label': 'Settings',
      'icon': Icons.settings,
      // 'page': () => SettingsView(),
    },
    {
      'route': '/scanner',
      'label': 'Scan',
      'icon': Icons.scanner,
      'page': () => ScannerView(),
    },
  ];

  @override
  void onInit() {
    super.onInit();
    
    // Listen to route changes
    ever(Get.routing as RxInterface<Routing?>, (Routing? routing) {
      _updateCurrentIndex(routing?.current);
    });
  }

  void _updateCurrentIndex(String? route) {
    if (route == null) return;
    
    for (int i = 0; i < tabs.length; i++) {
      if (route.startsWith(tabs[i]['route'])) {
        if (currentIndex.value != i) {
          currentIndex.value = i;
        }
        break;
      }
    }
  }

  void switchTab(int index) {
    currentIndex.value = index;
  }

  void goToTab(int index) {
    if (index == currentIndex.value) {
      // If already on this tab, pop to root
      Get.until((route) => route.settings.name == tabs[index]['route']);
    } else {
      // Switch to another tab
      currentIndex.value = index;
      Get.offAllNamed(tabs[index]['route']);
    }
  }
}