import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_billing_app/app/modules/base_page/views/base_page_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Text('data');
    // return  BasePageView(
    //   title: const Text("Home",style: TextStyle(
    //     color: Colors.black
    //   ),),
    //   child: const Center(child: Text("Home Content")),
    // );
  }
}
