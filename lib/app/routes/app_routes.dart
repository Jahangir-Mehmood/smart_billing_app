part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const SIGNIN = _Paths.SIGNIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const LOGOUT = _Paths.LOGOUT;
  static const BASE_PAGE = _Paths.BASE_PAGE;
  static const BOTTOM_TABBAR = _Paths.BOTTOM_TABBAR;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const SIGNIN = '/signin';
  static const SIGNUP = '/signup';
  static const DASHBOARD = '/dashboard';
  static const LOGOUT = '/logout';
  static const BASE_PAGE = '/base-page';
  static const BOTTOM_TABBAR = '/bottom-tabbar';
}
