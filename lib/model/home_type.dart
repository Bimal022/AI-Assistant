import 'package:flutter/material.dart';

enum HomeType { aiChatbot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  String get title => switch (this) {
        HomeType.aiChatbot => "Chatbot",
        HomeType.aiImage => "Image Generator",
        HomeType.aiTranslator => "Text Translator",
      };
  String get lottie => switch (this) {
        HomeType.aiChatbot => "chatbot.json",
        HomeType.aiImage => "imagecreator.json",
        HomeType.aiTranslator => "languagetrans.json",
      };
  bool get leftAlign => switch (this) {
        HomeType.aiChatbot => true,
        HomeType.aiImage => false,
        HomeType.aiTranslator => true,
      };
      EdgeInsets get padding => switch (this) {
        HomeType.aiChatbot => EdgeInsets.zero,
        HomeType.aiImage => EdgeInsets.all(20),
        HomeType.aiTranslator => EdgeInsets.zero,
      };
}
