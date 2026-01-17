import 'package:get/get.dart';
import '../routes/app_pages.dart';

class HomeController extends GetxController {
  // Reactive variables for animations
  final logoAnimation = 0.0.obs;
  final buttonAnimation = 0.0.obs;
  final floatingAnimation = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    _startAnimations();
  }

  void _startAnimations() {
    // Logo fade-in and scale animation
    _startLogoAnimation();

    // Button slide-up animation
    _startButtonAnimation();

    // Floating animation for logo
    _startFloatingAnimation();
  }

  void _startLogoAnimation() {
    Future.delayed(const Duration(milliseconds: 100), () {
      final duration = 1000;
      final steps = 60;
      final increment = 1.0 / steps;

      for (int i = 0; i <= steps; i++) {
        Future.delayed(Duration(milliseconds: (duration / steps * i).round()), () {
          if (!isClosed) {
            logoAnimation.value = (i * increment).clamp(0.0, 1.0);
          }
        });
      }
    });
  }

  void _startButtonAnimation() {
    Future.delayed(const Duration(milliseconds: 800), () {
      final duration = 800;
      final steps = 60;
      final increment = 1.0 / steps;

      for (int i = 0; i <= steps; i++) {
        Future.delayed(Duration(milliseconds: (duration / steps * i).round()), () {
          if (!isClosed) {
            buttonAnimation.value = (i * increment).clamp(0.0, 1.0);
          }
        });
      }
    });
  }

  void _startFloatingAnimation() {
    Future.delayed(const Duration(milliseconds: 1200), () {
      _animateFloating();
    });
  }

  void _animateFloating() {
    if (isClosed) return;

    final duration = 2000; // 2 seconds for smooth floating
    final steps = 60;

    // Animate down
    for (int i = 0; i <= steps; i++) {
      Future.delayed(Duration(milliseconds: (duration / 2 / steps * i).round()), () {
        if (!isClosed) {
          floatingAnimation.value = -10.0 + (20.0 * i / steps); // -10 to +10
        }
      });
    }

    // Animate up
    for (int i = 0; i <= steps; i++) {
      Future.delayed(Duration(milliseconds: duration ~/ 2 + (duration / 2 / steps * i).round()), () {
        if (!isClosed) {
          floatingAnimation.value = 10.0 - (20.0 * i / steps); // +10 to -10
        }
      });
    }

    // Loop the animation
    Future.delayed(Duration(milliseconds: duration), _animateFloating);
  }

  void navigateToImageSelection() {
    Get.toNamed(Routes.IMAGE_SELECTION);
  }
}