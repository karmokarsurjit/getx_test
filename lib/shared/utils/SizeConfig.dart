import 'package:flutter/material.dart';

double? heightPx({required height,value}){
  return (height / (15 * 2) * value);
}


double? widthPx({required width,value}){
  return (width / (15 * 2) * value);
}

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getAdaptiveTextSize(BuildContext? context, dynamic value, mediaQueryHeight) {
    return (value / 720) * mediaQueryHeight;
  }
}

class AdaptiveIconSize {
  const AdaptiveIconSize();

  getIconSize(BuildContext? context, dynamic value, mediaQueryHeight) {
    return (value / 720) * mediaQueryHeight;
  }
}