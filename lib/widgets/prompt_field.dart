import 'package:flutter/material.dart';
import 'package:gemini_api/widgets/gradient_shader.dart';

class PromptField extends StatelessWidget {
  const PromptField({super.key});

  @override
  Widget build(BuildContext context) {
    return gradientShader(
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: 'Enter a prompt...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
