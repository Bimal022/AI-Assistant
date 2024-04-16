import 'package:ai_assistant/model/home_type.dart';
import 'package:ai_assistant/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showWelcome = false;
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          title: const Text(
            "AI Assistant",
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.brightness_4_outlined,
                  color: Colors.blue,
                  size: 26,
                ))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: mq.width * 0.04, vertical: mq.height * 0.015),
          children: HomeType.values
              .map((e) => HomeCard(homeType: e)).toList(),
        ));
  }
}
