import 'package:smart_billing_app/constant/import.dart';
import 'package:smart_billing_app/domain/Widgets/appbar/appbar.dart';

class BasePageView extends StatelessWidget {
  const BasePageView({
    super.key,
    required this.title,
    required this.child,

    this.showAppBar = true,
    this.showDrawer = false,
    this.showBottomNav = true,
  });

  final String title;
  final Widget child;

  final bool showAppBar;
  final bool showDrawer;
  final bool showBottomNav;

  BottomTab get _currentTab {
    final route = Get.currentRoute;

    if (route.startsWith('/bills')) {
      return BottomTab.bills;
    } else if (route.startsWith('/settings')) {
      return BottomTab.settings;
    }
    return BottomTab.dashboard; // default
  }

  int get _currentIndex => _currentTab.index;

  void _onBottomTap(int index) {
    final tab = BottomTab.values[index];

    switch (tab) {
      case BottomTab.bills:
        Get.offAllNamed('/bills');
        break;
      case BottomTab.dashboard:
        Get.offAllNamed('/dashboard');
        break;
      case BottomTab.settings:
        Get.offAllNamed('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar ? UAppBar(title: title) : null,

      body: child,

      bottomNavigationBar: showBottomNav
          ? BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onBottomTap,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long),
                  label: 'Bills',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            )
          : null,
    );
  }
}



enum BottomTab {
  bills,
  dashboard,
  settings,
}
