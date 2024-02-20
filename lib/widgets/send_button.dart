import 'package:flutter/material.dart';
import 'package:gemini_api/widgets/gradient_shader.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Container(
      
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle,  color:  Color(0xff237ef6),),
        child: Icon(Icons.send,color: Colors.black,),
      
      );
    
  }
}