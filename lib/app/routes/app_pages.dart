import 'package:get/get.dart';

import '../ui/bindings/coloring_bindings.dart';
import '../ui/bindings/image_selection_binding.dart';
import '../ui/views/coloring_view.dart';
import '../ui/views/image_selection_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.IMAGE_SELECTION;

  static final routes = [
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