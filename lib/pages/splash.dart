import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hngmobilestage1/pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // HIDE TOP AND BOTTOM SYSTEM UI
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // SPLASH SCREEN TIMER
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Home(),
        ),
      );
    });
  }

  // RE-SHOW TOP AND BOTTOM SYSTEM UI
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  final LinearGradient _gradient = const LinearGradient(colors: <Color>[
    Color(0xffDFB555),
    Color(0xffEAD094),
    Color(0xffF4EACD),
    Color(0xffD5AD52),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: Colors.black,
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return _gradient.createShader(rect);
            },
            child: Text(
              'PROFILE',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 44,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
