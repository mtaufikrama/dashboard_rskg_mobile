import 'package:get/get.dart';

import '../controllers/chartz_pasien_bpjs_controller.dart';

class ChartzPasienBpjsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzPasienBpjsController>(
      () => ChartzPasienBpjsController(),
    );
  }
}
