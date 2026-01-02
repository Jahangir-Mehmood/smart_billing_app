import 'package:flutter/material.dart';
import 'package:get/get.dart';

MaterialColor createMaterialColor(Color color) {
  List<double> strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

class ThemeController extends GetxController {
  Rx<MaterialColor> primaryColor = Colors.blue.obs;

  void setPrimaryColor(MaterialColor color) {
    primaryColor.value = color;
  }

  ThemeData get themeData => ThemeData(
        primarySwatch: primaryColor.value,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor.value,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: primaryColor.value.withOpacity(0.1),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor.value,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      );
}
