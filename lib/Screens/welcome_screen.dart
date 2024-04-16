import 'package:ai_assistant/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';
import '../model/welcome_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pc = PageController();
    mq = MediaQuery.sizeOf(context);
    final lst = [
      WelcomeModel(
        title: "Ask Me Anything",
        subtitle: "I Can Be Your Best Friend Ask Me Anything",
        lottie: "assets/lotties/hello.json",
      ),
      WelcomeModel(
        title: "Turn Fantasies into Masterpieces",
        subtitle: "From Dreams to Digital Delights",
        lottie: "assets/lotties/imagination.json",
      ),
    ];
    return Scaffold(
        body: PageView.builder(
      controller: pc,
      itemCount: lst.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: mq.height * 0.2),
            Lottie.asset(lst[index].lottie, height: mq.height * 0.4),
            Text(
              lst[index].title,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                letterSpacing: .5,
              ),
            ),
            SizedBox(height: mq.height * 0.01),
            Text(
              lst[index].subtitle,
              style: const TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(height: mq.height * 0.03),
            Wrap(
              spacing: 10,
              children: List.generate(
                lst.length,
                (i) => Container(
                  width: i == index ? 15 : 10,
                  height: 8,
                  decoration: BoxDecoration(
                      color: i == index ? Colors.blue : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      )),
                ),
              ),
            ),
            SizedBox(height: mq.height * 0.09),
            GestureDetector(
              onTap: () {
                if (index == lst.length - 1) {
                  Get.off(HomeScreen());
                  // Navigator.pushReplacement(
                  //     context, MaterialPageRoute(builder: (_) => HomeScreen()));
                } else {
                  pc.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease);
                }
              },
              child: Container(
                width: mq.width * 0.30,
                height: mq.width * 0.1,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Center(
                    child: Text(
                  index != lst.length - 1 ? "Next" : "Finish",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const Spacer(),
          ],
        );
      },
    ));
  }
}
