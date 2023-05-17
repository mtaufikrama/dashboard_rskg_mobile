import 'package:get/get.dart';

import '../controllers/chartz_pasien_poli_controller.dart';

class ChartzPasienPoliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzPasienPoliController>(
      () => ChartzPasienPoliController(),
    );
  }
}
