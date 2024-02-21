import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatbotController extends GetxController {
  late final GenerativeModel model;
  late final ChatSession chat;

  final ScrollController scrollController = ScrollController();
  final TextEditingController textController = TextEditingController();
  final FocusNode textFieldFocus = FocusNode();
  RxBool loading = false.obs;
  static const apiKey ='AIzaSyAWALV7qDaRu7M-VQH6R4RwphvItR8Smq8';
      // String.fromEnvironment('AIzaSyAWALV7qDaRu7M-VQH6R4RwphvItR8Smq8');

  @override
  void onInit() {
    
    // TODO: implement onInit
    super.onInit();
    model = GenerativeModel(model: 'gemini-pro', apiKey: 'AIzaSyAWALV7qDaRu7M-VQH6R4RwphvItR8Smq8');
    chat = model.startChat();
  }

  void scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  Future<void> sendChatMessage(String message, BuildContext ctx) async {
    loading.value = true;

    try {
      var response = await chat.sendMessage(
        Content.text(message),
      );
      var text = response.text;

      if (text == null) {
        _showError('No response from API.', ctx);
        return;
      } else {
        loading.value = false;
         scrollDown();
         update();
      }
    } catch (e) {
      _showError(e.toString(), ctx);

      loading.value = false;
    } finally {
      textController.clear();

      loading.value = false;

      textFieldFocus.requestFocus();
    }
  }

  void _showError(String message, BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: SelectableText(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}
