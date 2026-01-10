import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:smart_billing_app/constant/images.dart';
import 'package:smart_billing_app/constant/import.dart';

class DashboardView extends GetView<DashboardController> {
   DashboardView({super.key});
 final List<Map<String, String>> items = [
  {'image': productImage4a, 'title': 'name'},
  {'image': productImage4b, 'title': 'dgd'},
  {'image': productImage4c, 'title': 'gfd'},
  {'image': productImage4d, 'title': 'htr'},
  {'image': productImage4e, 'title': 'lkk'},
];
  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Dashboard',
      showDrawer: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(children: [Image(image: AssetImage(items[index]['image']!)),Text(items[index]['title']!)]),
          );
        },
      ),
    );
  }

}
