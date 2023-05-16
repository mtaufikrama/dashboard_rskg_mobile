import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/menu.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/menu2.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/menu3.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title2.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          centerTitle: true,
          elevation: 0,
        ),
      body:
      SingleChildScrollView(
        child : Column(
        children: [
          WidgetTitlelogo(),
          SizedBox(
            height: 10,
          ),
          WidgetTitlePoli1(),
          HomePage(),
          SizedBox(
            height: 10,
          ),
          WidgetTitlePoli2(),
          HomePage2(),
          HomePage3(),
        ],
      )
    ));
  }
}