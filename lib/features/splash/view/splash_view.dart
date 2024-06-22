import 'package:flutter/material.dart';
import 'package:flutter_gdsc/core/utils/app_assets.dart';
import 'package:flutter_gdsc/core/utils/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => AppRouter.router.pushReplacement(AppRouter.home),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.splash,
          fit: BoxFit.fill,
          width: size.width,
          height: size.height,
        ),
      ),
    );
  }
}
