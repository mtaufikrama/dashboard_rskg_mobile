import 'package:get/get.dart';

import '../controllers/chartz_obat_controller.dart';

class ChartzObatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzObatController>(
      () => ChartzObatController(),
    );
  }
}
