import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import 'package:smart_billing_app/app/modules/logout/controllers/logout_controller.dart';
import 'package:smart_billing_app/constant/import.dart';

class LogoutView extends GetView<LogoutController> {
  const LogoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'LOGOUT',
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          final item = controller.items[index];
          final isEven = index % 2 == 0;

          final animation = Tween<Offset>(
            begin: Offset(isEven ? 1 : -1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: controller.controllers[index],
              curve: Curves.easeOutCubic,
            ),
          );

          return SlideTransition(
            position: animation,
            child: Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(item['image']!),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      item['title']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
