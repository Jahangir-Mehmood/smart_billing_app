part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const SIGNIN = _Paths.SIGNIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const LOGOUT = _Paths.LOGOUT;
  static const SCANNER = _Paths.SCANNER;
  static const MAIN_WRAPPER = _Paths.MAIN_WRAPPER;
}

abstract class _Paths {
  _Paths._();

  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const SIGNIN = '/signin';
  static const SIGNUP = '/signup';
  static const DASHBOARD = '/dashboard';
  static const LOGOUT = '/logout';
  static const SCANNER = '/scanner';
  static const MAIN_WRAPPER = '/main-wrapper';
}
