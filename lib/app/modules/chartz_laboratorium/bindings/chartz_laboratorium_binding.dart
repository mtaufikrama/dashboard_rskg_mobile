import 'package:get/get.dart';

import '../controllers/chartz_laboratorium_controller.dart';

class ChartzLaboratoriumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzLaboratoriumController>(
      () => ChartzLaboratoriumController(),
    );
  }
}
