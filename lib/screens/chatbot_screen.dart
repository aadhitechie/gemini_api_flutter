import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gemini_api/_controller/chatbot_controller.dart';
import 'package:gemini_api/widgets/message_widget.dart';
import 'package:gemini_api/widgets/prompt_field.dart';
import 'package:gemini_api/widgets/send_button.dart';
import 'package:get/get.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatBotScreen extends GetView<ChatbotController> {
  ChatBotScreen({super.key});

  @override
  final controller = Get.put(ChatbotController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0a0a),
      appBar: AppBar(
        title: const Text('Smart Chatbot'),
        backgroundColor: const Color(0xff0a0a0a),
      ),
      body: SafeArea(
          child: Column(
          
        children: [
          Expanded(
            child: ChatbotController.apiKey.isNotEmpty
                ? GetBuilder<ChatbotController>(
                  builder: (controller) {
                    return ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.chat.history.length,
                        itemBuilder: (context, index) {
                          var content = controller.chat.history.toList()[index];
                          var text = content.parts
                              .whereType<TextPart>()
                              .map<String>((e) => e.text)
                              .join();
                          return MessageWidget(
                              text: text, isFromUser: content.role == 'user');
                        },
                      );
                  }
                )
                : const Center(child: Text('No API key found. Please provide an API Key.')),
          ),
         
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
                width: 360,
                child: Row(
                  children: [
                    Expanded(child: PromptField(textController: controller.textController,textFieldFocus: controller.textFieldFocus,)),
                  const  SizedBox(
                      width: 10,
                    ),
                 SendButton(ontap: () {
                      controller.sendChatMessage(controller.textController.text, context);
                      log('$controller.chat.history.toList()[1]');
                                     },)
                  ],
                )),
          ),
        ],
      )),
    );
  }
}
