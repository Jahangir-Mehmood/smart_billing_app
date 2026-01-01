import 'package:smart_billing_app/constant/import.dart';
import 'package:smart_billing_app/models/company_theme.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  final Rx<CompanyTheme> companyTheme = const CompanyTheme(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
    background: Colors.white,
    text: Colors.black,
  ).obs;

  void setCompanyTheme(CompanyTheme theme) {
    companyTheme.value = theme;
    Get.changeTheme(_buildTheme(theme));
  }

  ThemeData _buildTheme(CompanyTheme theme) {
    return ThemeData(
      primaryColor: theme.primary,
      scaffoldBackgroundColor: theme.background,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.primary,
        foregroundColor: theme.text,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: theme.primary,
        unselectedItemColor: Colors.grey,
        backgroundColor: theme.background,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.primary,
      ),
    );
  }
}
