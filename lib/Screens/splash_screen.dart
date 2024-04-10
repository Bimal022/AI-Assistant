import 'package:flutter/material.dart';
import 'package:ai_assistant/helper/global.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.asset(
            "assets/logo.png",
            width: mq.width * 0.45,
          ),
        ),
      ),
    );
  }
}
