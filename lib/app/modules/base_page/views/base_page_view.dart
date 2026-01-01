import 'package:smart_billing_app/constant/import.dart';
import 'package:smart_billing_app/domain/Widgets/appbar/appbar.dart';
import 'package:smart_billing_app/domain/Widgets/appdrawer/appdrawer.dart';

class BasePageView extends StatelessWidget {
  const BasePageView({
    super.key,
    required this.title,
    required this.child,

    this.showAppBar = true,
    this.showDrawer = false,
    this.showBottomNav = true,

    this.appBarColor,
    this.appBarHeight = 60,
    this.textColor,

    this.showBackArrow = false,
    this.actions,
    this.currentIndex = 1,
    this.onBottomTap,
  });

  final String title;
  final Widget child;

  final bool showAppBar;
  final bool showDrawer;
  final bool showBottomNav;

  final Color? appBarColor;
  final double appBarHeight;
  final Color? textColor;

  final bool showBackArrow;
  final List<Widget>? actions;

  final int currentIndex;
  final Function(int)? onBottomTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer ? const UAppDrawer() : null,

      appBar: showAppBar
          ? UAppBar(
              title: title,
              height: appBarHeight,
              backgroundColor: appBarColor,
              textColor: textColor,
              showDrawer: showDrawer,
              showBackArrow: showBackArrow && !showDrawer,
              actions: actions,
            )
          : null,

      body: child,

      bottomNavigationBar: showBottomNav
          ? BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onBottomTap,
              type: BottomNavigationBarType.fixed,
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
