import 'package:clone_linkaja/core/router/app_router.dart';
import 'package:clone_linkaja/features/home/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:go_router/go_router.dart';




class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
        context.go('/'); // Navigate to MainPage after the splash ends
      },
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("assets/images/logo.jpeg"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
    );
  }
}
