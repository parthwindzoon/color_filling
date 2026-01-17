import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
            () => controller.isVideoInitialized.value
            ? Center(
          child: AspectRatio(
            aspectRatio: controller.videoController.value.aspectRatio,
            child: VideoPlayer(controller.videoController),
          ),
        )
            : const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}