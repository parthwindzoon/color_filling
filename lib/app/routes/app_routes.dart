part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const IMAGE_SELECTION = _Paths.IMAGE_SELECTION;
  static const COLORING = _Paths.COLORING;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const IMAGE_SELECTION = '/image-selection';
  static const COLORING = '/coloring';
}