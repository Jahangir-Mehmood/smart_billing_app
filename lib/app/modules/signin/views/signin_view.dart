// signin_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      title: 'Login',
      showBackArrow: true,
      child: Center(child: Text('Login Screen')),
    );
  }
}
