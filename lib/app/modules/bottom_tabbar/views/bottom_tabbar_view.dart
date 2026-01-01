import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_tabbar_controller.dart';

class BottomTabbarView extends GetView<BottomTabbarController> {
  const BottomTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('data');
    // SizedBox(
    //   height: 70,
    //   child: Stack(
    //     clipBehavior: Clip.none,
    //     children: [
    //       // 🔹 Bottom bar background
    //       Container(
    //         height: 60,
    //         decoration: const BoxDecoration(
    //           color: Colors.white,
    //           boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
    //         ),
    //         child: Obx(
    //           () => Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               _buildNavItem(Icons.receipt, 'Bills', 0),
    //               _buildNavItem(Icons.bar_chart, 'Dashboard', 1),
    //               _buildNavItem(Icons.settings, 'Settings', 3),
    //             ],
    //           ),
    //         ),
    //       ),

    //       // // 🔹 Middle dashboard button
    //       // Obx(() {
    //       //   final bool isSelected = controller.currentIndex.value == 1;

    //       //   return Positioned(
    //       //     left: MediaQuery.of(context).size.width / 2 - 35,
    //       //     top: -20,
    //       //     child: GestureDetector(
    //       //       onTap: () => controller.changeTab(1),
    //       //       child: Column(
    //       //         children: [
    //       //           Container(
    //       //             height: 70,
    //       //             width: 70,
    //       //             decoration: BoxDecoration(
    //       //               color: isSelected ? Colors.blue : Colors.grey,
    //       //               shape: BoxShape.circle,
    //       //               boxShadow: const [
    //       //                 BoxShadow(
    //       //                   color: Colors.black26,
    //       //                   blurRadius: 4,
    //       //                 ),
    //       //               ],
    //       //             ),
    //       //             child: const Icon(
    //       //               Icons.dashboard,
    //       //               color: Colors.white,
    //       //               size: 32,
    //       //             ),
    //       //           ),
    //       //           const SizedBox(height: 4),
    //       //           Text(
    //       //             'Dashboard',
    //       //             style: TextStyle(
    //       //               fontSize: 12,
    //       //               fontWeight: FontWeight.bold,
    //       //               color: isSelected ? Colors.blue : Colors.grey,
    //       //             ),
    //       //           ),
    //       //         ],
    //       //       ),
    //       //     ),
    //       //   );
    //       // }),
    //     ],
    //   ),
    // );
  }

  // Widget _buildNavItem(IconData icon, String label, int index) {
  //   final bool isSelected = controller.currentIndex.value == index;

  //   return GestureDetector(
  //     onTap: () => controller.changeTab(index),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
  //         Text(label, style: TextStyle(fontSize: 12, color: isSelected ? Colors.blue : Colors.grey)),
  //       ],
  //     ),
  //   );
  // }
}
