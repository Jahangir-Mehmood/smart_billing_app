// dashboard_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/app/routes/app_pages.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final List<Map<String, String>> items = [
    {'image': 'image1.jpg', 'title': 'Product 1'},
    {'image': 'image2.jpg', 'title': 'Product 2'},
    {'image': 'image3.jpg', 'title': 'Product 3'},
    {'image': 'image4.jpg', 'title': 'Product 4'},
  ];

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Dashboard',
      showDrawer: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Go to detail screen - bottom nav will still show
              Get.toNamed(Routes.DASHBOARD);
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      items[index]['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(items[index]['title']!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}