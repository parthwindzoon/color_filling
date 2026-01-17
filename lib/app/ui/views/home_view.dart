import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.shortestSide > 600;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/bg1.jpg',
            fit: BoxFit.cover,
          ),

          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),

              // Logo - no animation, transparent background
              Image.asset(
                'assets/images/Fill Factory.png',
                width: isTablet ? 500 : 220,
                fit: BoxFit.contain,
              ),

              const Spacer(flex: 1),

              // Play Button
              GestureDetector(
                onTap: controller.navigateToImageSelection,
                child: Image.asset(
                  'assets/images/play_btn.png',
                  width: isTablet ? 200 : 150,
                  fit: BoxFit.contain,
                ),
              ),

              const Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}