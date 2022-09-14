import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      buttonTheme: ButtonThemeData(buttonColor: buttonBackground),
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
        selectionHandleColor: accentColor,
        cursorColor: accentColor,
      ),
      toggleableActiveColor: accentColor,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: brightness) ,
        color: cardBackground,
         titleTextStyle: baseTextTheme.bodyText1?.copyWith(
           color: secondaryText,
           fontSize: 18,
         ),
        iconTheme: IconThemeData(
          color: secondaryText,
        ),
      ),
      iconTheme: IconThemeData(
        color: secondaryText,
        size: 16.0,
      ),
      errorColor: error,
    );
  }

  static ThemeData get lightTheme => createTheme(
      brightness: Brightness.light,
      background: ConstantColors.DASHBACKGROUNDCOLOR,
      cardBackground: ConstantColors.WHITE,
      primaryText: ConstantColors.TEXTBLACK,
      secondaryText: ConstantColors.TEXTGREY,
      accentColor: ConstantColors.YELLOW,
      divider: ConstantColors.GREY,
      buttonText: ConstantColors.TEXTBLACK,
      disabled: ConstantColors.GREY,
      error: ConstantColors.RED,
  );

  static ThemeData get darkTheme => createTheme(
    brightness: Brightness.dark,
    background: ConstantColors.LOGINBACKGROUNDCOLOR,
    cardBackground: ConstantColors.BLACK,
    primaryText: ConstantColors.TEXTWHITE,
    secondaryText: ConstantColors.TEXTBLACK,
    accentColor: ConstantColors.YELLOW,
    divider: ConstantColors.GREY,
    buttonText: ConstantColors.TEXTBLACK,
    disabled: ConstantColors.GREY,
    error: ConstantColors.RED,
  );

}