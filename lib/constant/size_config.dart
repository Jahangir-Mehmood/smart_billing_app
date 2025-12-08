import 'dart:math';
import 'package:smart_billing_app/constant/import.dart';

class RSize {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static const double baseWidth = 375;
  static const double baseHeight = 812;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
  }

  static double w(double v) => (v / baseWidth) * screenWidth;
  static double h(double v) => (v / baseHeight) * screenHeight;

  static double f(double v) {
    double scale = min(screenWidth / baseWidth, screenHeight / baseHeight);
    return v * scale;
  }

  static double r(double v) => min(w(v), h(v));
  static double s(double v) => min(w(v), h(v));
}

/// ✅ HELPER FUNCTIONS
double cW(double v) => RSize.w(v);
double cH(double v) => RSize.h(v);
double cF(double v) => RSize.f(v);
double cR(double v) => RSize.r(v);
double cS(double v) => RSize.s(v);
double cSize(double v) => RSize.s(v); // ✅ NEW ALIAS FOR SQUARE SIZE
