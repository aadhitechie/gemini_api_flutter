import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class Chatbot extends GetxController {
  late final GenerativeModel model;
  late final ChatSession chat;
  final ScrollController scrollController = ScrollController();
  final TextEditingController textController = TextEditingController();
  final FocusNode textFieldFocus = FocusNode();
  bool loading = false;
  static const _apiKey =
      String.fromEnvironment('AIzaSyDBDup4kEP7PTScsP5n7II-oeDcHOrgnc0');
}