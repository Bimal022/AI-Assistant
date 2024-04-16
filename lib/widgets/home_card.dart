import 'package:ai_assistant/model/home_type.dart';
import 'package:flutter/material.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    Animate.restartOnHotReload = true;
    return Card(
      margin: EdgeInsets.only(bottom: mq.height * 0.02),
      color: Colors.blue.withOpacity(0.2),
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: homeType.leftAlign
          ? Row(
              children: [
                Container(
                  padding: homeType.padding,
                  width: mq.width * .35,
                  child: Lottie.asset(
                    'assets/lotties/${homeType.lottie}',
                  ),
                ),
                Spacer(),
                Text(
                  homeType.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            )
          : Row(
              children: [
                const Spacer(flex: 2),
                Text(
                  homeType.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Container(
                  padding: homeType.padding,
                  width: mq.width * .35,
                  child: Lottie.asset(
                    'assets/lotties/${homeType.lottie}',
                  ),
                ),
                const Spacer(),
              ],
            ),
    ).animate().fade(duration: 1.seconds, curve: Curves.easeIn);
  }
}
