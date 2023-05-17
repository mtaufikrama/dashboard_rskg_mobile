import 'package:get/get.dart';

import '../controllers/chartz_pasien_umum_controller.dart';

class ChartzPasienUmumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzPasienUmumController>(
      () => ChartzPasienUmumController(),
    );
  }
}
