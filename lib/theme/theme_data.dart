import 'package:flutter/material.dart';
import 'package:getx_test/shared/constants/colors.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryText,
    Color? secondaryText,
    required Color accentColor,
    Color? divider,
    Color? buttonBackground,
    required Color buttonText,
    Color? cardBackground,
    Color? disabled,
    required Color error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView : Typography.whiteMountainView;
    return ThemeData(
      brightness: brightness,
      buttonColor: buttonBackground,
      canvasColor: background,
      dividerColor: divider,

      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      backgroundColor: background,
      primaryColor: accentColor,

      textSelectionTheme: TextSelectionThemeData(
        selectionColor: accentColor,

      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
      brightness: Brightness.light,
      background: ConstantColors.DASHBACKGROUNDCOLOR,
      cardBackground: ConstantColors.WHITE,
      primaryText: ConstantColors.TEXTWHITE,
      secondaryText: ConstantColors.TEXTBLACK,
      accentColor: accentColor,
      buttonText: buttonText,
      error: error
  );

}