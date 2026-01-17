import 'package:get/get.dart';

import '../ui/bindings/coloring_bindings.dart';
import '../ui/bindings/home_binding.dart';
import '../ui/bindings/image_selection_binding.dart';
import '../ui/bindings/splash_bindings.dart';
import '../ui/views/coloring_view.dart';
import '../ui/views/home_view.dart';
import '../ui/views/image_selection_view.dart';
import '../ui/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.IMAGE_SELECTION,
      page: () => const ImageSelectionView(),
      binding: ImageSelectionBinding(),
    ),
    GetPage(
      name: Routes.COLORING,
      page: () => const ColoringView(),
      binding: ColoringBinding(),
    ),
  ];
}