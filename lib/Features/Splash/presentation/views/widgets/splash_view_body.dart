import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/Splash/presentation/views/widgets/animate_text.dart';
import 'package:free_book_shelf/Features/home/presentation/views/home_view.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/assets.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToPage();
  }

 

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo, color: Colors.white),
        AnimateText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

   void navigateToPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kTransition,
      );
    });
  }
}
