import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App basic Colors

  static const Color primary = Color(0xFF114b7b);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);

  // Gradient Colors
  static const Gradient linerGradientColor = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // Text Colors

  static const Color textprimaryColor = Color(0xFF333333);
  static const Color textsecondaryColor = Color(0xFF6C757D);
  static const Color textWhiteColor = Colors.white;

  // Background Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);

  // Background Container Color

  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static Color darkContainerColor = Colors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonprimaryColor = Color(0xFF114b7b);
  static const Color buttonsecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderprimaryColor = Color(0xFFD9D9D9);
  static const Color bordersecondaryColor = Color(0xFFE6E6E6);

  //Error and Validation Color
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF1976D2);

  // Netural Shades
  static const Color blackColor = Color(0xFF232323);
  static const Color darkerGreyColor = Color(0xFF4F4F4F);
  static const Color darkGreyColor = Color(0xFF939393);
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
}
