import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Scanner',
      child: const Center(child: Text('SIGNUP')),
    );
  }
}
