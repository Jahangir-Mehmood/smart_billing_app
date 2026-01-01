import 'package:smart_billing_app/constant/import.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/logout/bindings/logout_binding.dart';
import '../modules/logout/views/logout_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

// lib/app/routes/app_pages.dart

part 'app_routes.dart';

// class AppPages {
//   AppPages._();

//   static const INITIAL = Routes.SPLASH;

//   static final routes = [
//     GetPage(
//       name: _Paths.HOME,
//       page: () => const HomeView(),
//       binding: HomeBinding(),
//     ),
//     GetPage(
//       name: _Paths.SPLASH,
//       page: () => const SplashView(),
//       binding: SplashBinding(),
//     ),
//     GetPage(
//       name: _Paths.SIGNIN,
//       page: () => const SigninView(),
//       binding: SigninBinding(),
//     ),
//     GetPage(
//       name: _Paths.SIGNUP,
//       page: () => const SignupView(),
//       binding: SignupBinding(),
//     ),
//     GetPage(
//       name: _Paths.DASHBOARD,
//       page: () => const DashboardView(),
//       binding: DashboardBinding(),
//     ),
//     GetPage(
//       name: _Paths.LOGOUT,
//       page: () => const LogoutView(),
//       binding: LogoutBinding(),
//     ),
//     GetPage(
//       name: _Paths.BASE_PAGE,
//       page: () => const BasePageView(),
//       binding: BasePageBinding(),
//     ),
//     GetPage(
//       name: _Paths.BOTTOM_TABBAR,
//       page: () => const BottomTabbarView(),
//       binding: BottomTabbarBinding(),
//     ),
//   ];
// }

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),

    /// ✅ Actual Screens
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.LOGOUT,
      page: () => const LogoutView(),
      binding: LogoutBinding(),
    ),
  ];
}

