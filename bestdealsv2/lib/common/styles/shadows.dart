import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalCourseShadow = BoxShadow(
    color: TColors.darkGreyColor.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalCourseShadow = BoxShadow(
    color: TColors.darkGreyColor.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
