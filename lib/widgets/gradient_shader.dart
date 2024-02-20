import 'package:flutter/material.dart';

Widget gradientShader({Gradient? gradient, required Widget child}) {
  return ShaderMask(
    shaderCallback: (rect) => (gradient ??
            const LinearGradient(
                  colors: [
                 
                   Color(0xff237ef6),
                   Colors.white ,
                    ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight))
        .createShader(rect),
    child: child,
  );
}
