import 'package:flutter/material.dart';

class ConstantColors{

  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color BLACK = Color(0xFF000000);
  static const Color YELLOW = Color(0xFFF2C94C);
  static const Color GREEN = Color(0xFF018337);
  static const Color GREY = Color(0xFF828282);
  static const Color RED = Color(0xFFFD3131);

  static const Color DASHBACKGROUNDCOLOR = Color(0xFFFFFFFF);
  static const Color LOGINBACKGROUNDCOLOR =Color(0xFF32302C);
  static const Color REGBACKGROUNDCOLOR =Color(0xFF32302C);
  static const Color BUTTONCOLOR = Color(0xFFF2C94C);
  static const Color BOXCOLOR = Color(0xFFF2C94C);

  static const Color TEXTBLACK = Color(0xFF000000);
  static const Color TEXTWHITE = Color(0xFFFFFFFF);
  static const Color TEXTGREEN = Color(0xFF018337);
  static const Color TEXTGREY = Color(0xFF828282);

}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),

  );
}