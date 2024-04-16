import 'package:ai_assistant/Screens/welcome_screen.dart';
import 'package:ai_assistant/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:get/get.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => Pref.showWelcome ? const WelcomeScreen() : HomeScreen());
    });
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (_) => Pref.showWelcome ? WelcomeScreen1() : HomeScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Spacer(flex: 2),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(mq.width * 0.05),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: mq.width * 0.45,
                ),
              ),
            ),
            const Spacer(),
            const LoadingWidget(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
