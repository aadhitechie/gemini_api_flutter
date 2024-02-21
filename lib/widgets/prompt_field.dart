import 'package:flutter/material.dart';
import 'package:gemini_api/widgets/gradient_shader.dart';

class PromptField extends StatelessWidget {
   PromptField({super.key,required this.textController, required this.textFieldFocus});
 final FocusNode textFieldFocus;
 TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return gradientShader(
      child: TextFormField(
        autofocus: true,
        focusNode:textFieldFocus ,
        controller: textController,
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
