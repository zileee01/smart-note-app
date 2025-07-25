import 'package:flutter/material.dart'; 
import 'package:flutter_svg/flutter_svg.dart'; 

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoWidget(),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key}); 
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo.svg', 
      height: 80,
      semanticsLabel: 'Note wise logo',
    ); 
  }
}