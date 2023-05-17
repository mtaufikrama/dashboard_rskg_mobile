import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../chartz_jumlah_resep/views/Widget/BarChartWidget.dart';
import '../../chartz_jumlah_resep/views/Widget/dropdown_widget.dart';
import '../controllers/chartz_pasien_bpjs_controller.dart';

class ChartzPasienBpjsView extends GetView<ChartzPasienBpjsController> {
  const ChartzPasienBpjsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Grafik Pasien BPJS'),
        centerTitle: false,
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Grafik Berdasarkan :", style: TextStyle(fontSize: 14.0, color: Colors.black45, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              MyDropDown(items: controller.listTahun),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${controller.title}'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
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
