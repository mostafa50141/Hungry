import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/login_view.dart';
import 'package:hungry/features/splash/widget/hungry_txt.dart';
import 'package:hungry/features/splash/widget/image_splash.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // ignore: unused_field
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() => _opacity = 1.0);
    });

    Future.delayed(
      const Duration(seconds: 2),
      // ignore: use_build_context_synchronously
      () => Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (c) => LoginView()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: _opacity,
          curve: Curves.easeInOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(280),

              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.8, end: 1.0),
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutBack,
                builder: (context, scale, child) =>
                    Transform.scale(scale: scale, child: child),
                child: hungryTxt(color: Colors.white),
              ),

              Spacer(),

              TweenAnimationBuilder<double>(
                tween: Tween(begin: 40, end: 0),
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeOutCubic,
                builder: (context, value, child) =>
                    Transform.translate(offset: Offset(0, value), child: child),
                child: imageSplash(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
