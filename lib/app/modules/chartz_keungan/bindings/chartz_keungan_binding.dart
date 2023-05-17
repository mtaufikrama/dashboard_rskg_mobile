import 'package:get/get.dart';

import '../controllers/chartz_keungan_controller.dart';

class ChartzKeunganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzKeunganController>(
      () => ChartzKeunganController(),
    );
  }
}
