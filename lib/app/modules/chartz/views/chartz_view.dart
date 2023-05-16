import 'package:dashboard_rskg_mobile/app/modules/chartz/views/Widget/dropdown_widget.dart';
import 'package:dashboard_rskg_mobile/app/modules/chartz/views/Widget/BarChartWidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chartz_controller.dart';

class ChartzView extends GetView<ChartzController> {
  const ChartzView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChartzView'),
        centerTitle: true,
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyDropDown(items: controller.listTahun),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Grafik ${controller.title}'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 38,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ChartzWidget(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
