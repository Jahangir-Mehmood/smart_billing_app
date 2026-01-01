import 'package:smart_billing_app/constant/import.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.height = 60,
    this.showBackArrow = false,
    this.showDrawer = false,
    this.leadingOnPress,
    this.actions,
    this.textColor,
  });

  final String title;
  final Color? backgroundColor;
  final double height;
  final bool showBackArrow;
  final bool showDrawer;
  final VoidCallback? leadingOnPress;
  final List<Widget>? actions;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),

      leading: showDrawer
          ? Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: textColor ?? Colors.white),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            )
          : showBackArrow
              ? IconButton(
                  icon: Icon(Icons.arrow_back, color: textColor ?? Colors.white),
                  onPressed: Get.back,
                )
              : null,

      title: Text(
        title,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),

      actions: actions,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
