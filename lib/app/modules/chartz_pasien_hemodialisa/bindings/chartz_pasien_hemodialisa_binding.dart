import 'package:get/get.dart';

import '../controllers/chartz_pasien_hemodialisa_controller.dart';

class ChartzPasienHemodialisaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzPasienHemodialisaController>(
      () => ChartzPasienHemodialisaController(),
    );
  }
}
