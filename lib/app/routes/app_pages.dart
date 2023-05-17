import 'package:get/get.dart';

import '../modules/chartz_jumlah_resep/bindings/chartz_jumlah_resep_binding.dart';
import '../modules/chartz_jumlah_resep/views/chartz_jumlah_resep_view.dart';
import '../modules/chartz_keungan/bindings/chartz_keungan_binding.dart';
import '../modules/chartz_keungan/views/chartz_keungan_view.dart';
import '../modules/chartz_laboratorium/bindings/chartz_laboratorium_binding.dart';
import '../modules/chartz_laboratorium/views/chartz_laboratorium_view.dart';
import '../modules/chartz_obat/bindings/chartz_obat_binding.dart';
import '../modules/chartz_obat/views/chartz_obat_view.dart';
import '../modules/chartz_pasien_bpjs/bindings/chartz_pasien_bpjs_binding.dart';
import '../modules/chartz_pasien_bpjs/views/chartz_pasien_bpjs_view.dart';
import '../modules/chartz_pasien_hemodialisa/bindings/chartz_pasien_hemodialisa_binding.dart';
import '../modules/chartz_pasien_hemodialisa/views/chartz_pasien_hemodialisa_view.dart';
import '../modules/chartz_pasien_igd/bindings/chartz_pasien_igd_binding.dart';
import '../modules/chartz_pasien_igd/views/chartz_pasien_igd_view.dart';
import '../modules/chartz_pasien_poli/bindings/chartz_pasien_poli_binding.dart';
import '../modules/chartz_pasien_poli/views/chartz_pasien_poli_view.dart';
import '../modules/chartz_pasien_umum/bindings/chartz_pasien_umum_binding.dart';
import '../modules/chartz_pasien_umum/views/chartz_pasien_umum_view.dart';
import '../modules/chartz/bindings/chartz_binding.dart';
import '../modules/chartz/views/chartz_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      transition: Transition.rightToLeftWithFade,
      name: _Paths.CHARTZ,
      page: () => const ChartzView(),
      binding: ChartzBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_PASIEN_POLI,
      page: () => const ChartzPasienPoliView(),
      binding: ChartzPasienPoliBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_PASIEN_HEMODIALISA,
      page: () => const ChartzPasienHemodialisaView(),
      binding: ChartzPasienHemodialisaBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_PASIEN_IGD,
      page: () => const ChartzPasienIgdView(),
      binding: ChartzPasienIgdBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_LABORATORIUM,
      page: () => const ChartzLaboratoriumView(),
      binding: ChartzLaboratoriumBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_JUMLAH_RESEP,
      page: () => const ChartzJumlahResepView(),
      binding: ChartzJumlahResepBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_PASIEN_BPJS,
      page: () => const ChartzPasienBpjsView(),
      binding: ChartzPasienBpjsBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_PASIEN_UMUM,
      page: () => const ChartzPasienUmumView(),
      binding: ChartzPasienUmumBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_KEUNGAN,
      page: () => const ChartzKeunganView(),
      binding: ChartzKeunganBinding(),
    ),
    GetPage(
      name: _Paths.CHARTZ_OBAT,
      page: () => const ChartzObatView(),
      binding: ChartzObatBinding(),
    ),
  ];
}
