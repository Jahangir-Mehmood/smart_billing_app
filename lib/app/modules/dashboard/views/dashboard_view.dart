import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/constant/import.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePageView(
      title: 'Dashboard',
      showDrawer: true,
      child: Center(
        child: Text('Dashboard Content'),
      ),
    );
  }
}

