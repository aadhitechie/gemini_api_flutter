import 'package:flutter/material.dart';
import 'package:gemini_api/_controller/chatbot_controller.dart';
import 'package:gemini_api/widgets/gradient_shader.dart';
import 'package:get/get.dart';

class SendButton extends GetWidget<ChatbotController> {
  const SendButton({super.key, required this.ontap});
final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return 
       GestureDetector(
        onTap:ontap,
         child: Container(
               
          width: 50,
          height: 50,
          decoration: BoxDecoration(shape: BoxShape.circle,  color:  Color(0xff237ef6),),
          child: Obx(()=> Visibility(visible:! controller.loading.value,replacement: const CircularProgressIndicator.adaptive(), child: const Icon(Icons.send,color: Colors.black,))),
               
               ),
       );
    
  }
}