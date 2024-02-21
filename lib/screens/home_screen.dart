import 'package:flutter/material.dart';
import 'package:gemini_api/screens/chatbot_screen.dart';
import 'package:gemini_api/widgets/gradient_shader.dart';
import 'package:gemini_api/widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0a0a),
      body: Column(
        children: [
          Image.network(
              'https://miro.medium.com/v2/resize:fit:4800/format:webp/1*-KkJmzvv3jNhh88TWxIBJg.png'),

          gradientShader(child: PrimaryButton(title: 'Smart chatbots', onPress: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ChatBotScreen()));
          })),
          const SizedBox(
            height: 15,
          ),
          gradientShader(child: PrimaryButton(title: 'Visual search engine', onPress: () {})),
          const SizedBox(
            height: 15,
          ),
          gradientShader(child: PrimaryButton(title: 'Image descriptions for accessibility', onPress: () {})),
          const SizedBox(
            height: 15,
          ),
          gradientShader(child: PrimaryButton(title: 'Diagram & chart interpretation', onPress: () {}))
        ],
      ),
    );
  }
}
