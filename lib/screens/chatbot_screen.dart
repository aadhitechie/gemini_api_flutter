import 'package:flutter/material.dart';
import 'package:gemini_api/widgets/prompt_field.dart';
import 'package:gemini_api/widgets/send_button.dart';

// class ChatBotScreen extends StatefulWidget {
//   const ChatBotScreen({super.key});

//   @override
//   State<ChatBotScreen> createState() => _ChatBotScreenState();
// }

// class _ChatBotScreenState extends State<ChatBotScreen> {
  

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     model = GenerativeModel(model: 'gemini-pro', apiKey: _apiKey);
//     chat = model.startChat();
//   }

//   void scrollDown() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => scrollController.animateTo(
//         scrollController.position.maxScrollExtent,
//         duration: const Duration(
//           milliseconds: 750,
//         ),
//         curve: Curves.easeOutCirc,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff0a0a0a),
//       appBar: AppBar(
//         title: const Text('Smart Chatbot'),
//         backgroundColor: const Color(0xff0a0a0a),
//       ),
//       body: Column(
//         children: [],
//       ),
      
//     );
//   }
// }
class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xff0a0a0a),
          appBar: AppBar(
         title: const Text('Smart Chatbot'),
         backgroundColor: const Color(0xff0a0a0a),
       ),
      body: const SafeArea(child: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              width: 360,
              child: Row(
                children: [
                  Expanded(child: PromptField()),
                  SizedBox(width: 10,),
                  SendButton()
                ],
              )),
          ),
        ],
      )),
    );
  }
}