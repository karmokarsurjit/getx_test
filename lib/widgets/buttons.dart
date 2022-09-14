import 'package:flutter/material.dart';
import 'package:getx_test/shared/constants/constant_size.dart';

abstract class ConstantButtons{
  static CustomElevatedButton({onPressed,title}){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF2C94C)),
        onPressed: () => onPressed(),
        child: Text("data"));
  }
}