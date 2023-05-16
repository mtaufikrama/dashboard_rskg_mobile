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
      body: const Center(
        child: Text(
          'ChartzView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
