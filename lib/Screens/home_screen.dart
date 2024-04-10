import 'package:flutter/material.dart';
import 'package:ai_assistant/helper/global.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Padding(
              padding: EdgeInsets.all(mq.width * 0.05),
              child: Text("Kumar Bimal")),
        ),
      ),
    );
  }
}
