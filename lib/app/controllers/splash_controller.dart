import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../routes/app_pages.dart';

class SplashController extends GetxController {
  late VideoPlayerController videoController;
  var isVideoInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      // Initialize the video player with the asset
      videoController = VideoPlayerController.asset('assets/splash.mp4');

      await videoController.initialize();
      isVideoInitialized.value = true;

      // Play the video
      videoController.play();

      // Listen for video completion
      videoController.addListener(() {
        if (videoController.value.position >= videoController.value.duration) {
          // Video finished, navigate to image selection
          _navigateToImageSelection();
        }
      });
    } catch (e) {
      // If video fails to load, navigate immediately
      print('Error loading splash video: $e');
      _navigateToImageSelection();
    }
  }

  void _navigateToImageSelection() {
    Future.delayed(const Duration(milliseconds: 500), () {
      Get.offNamed(Routes.IMAGE_SELECTION);
    });
  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }
}