import 'package:get/get.dart';

import '../controllers/chartz_pasien_igd_controller.dart';

class ChartzPasienIgdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzPasienIgdController>(
      () => ChartzPasienIgdController(),
    );
  }
}
