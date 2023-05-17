import 'package:get/get.dart';

import '../controllers/chartz_jumlah_resep_controller.dart';

class ChartzJumlahResepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzJumlahResepController>(
      () => ChartzJumlahResepController(),
    );
  }
}
