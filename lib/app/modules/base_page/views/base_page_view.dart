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

    this.appBarColor,
    this.appBarHeight = 60,
    this.textColor,

    this.showBackArrow = false,
    this.actions,
  });

  final String title;
  final Widget child;

  final bool showAppBar;
  final bool showDrawer;

  final Color? appBarColor;
  final double appBarHeight;
  final Color? textColor;

  final bool showBackArrow;
  final List<Widget>? actions;

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
    );
  }
}
