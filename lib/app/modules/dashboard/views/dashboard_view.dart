import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:smart_billing_app/constant/import.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Dashboard',
      // showDrawer: true,
      showBackArrow: true,
      appBarColor: Colors.blue,
      child: const Center(
        child: Text('Dashboard Content'),
      ),
    );
  }
}
