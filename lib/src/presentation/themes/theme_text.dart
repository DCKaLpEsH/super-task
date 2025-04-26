import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/gen/fonts.gen.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  static const String? _fontPackage = null;

  static const TextStyle themeTextDisplayLarge = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 57,
    height: 1.12,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );

  static const TextStyle themeTextDisplayMedium = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 45,
    height: 1.16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle themeTextDisplaySmall = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 36,
    height: 1.22,
    color: AppColors.indigo,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle themeTextHeadlineLarge = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 32,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle themeTextHeadlineMedium = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 28,
    height: 1.29,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle themeTextHeadlineSmall = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 24,
    height: 1.33,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle themeTextBodyLarge = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static const TextStyle themeTextBodyMedium = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle themeTextBodySmall = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static const TextStyle themeTextLabelLarge = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static const TextStyle themeTextLabelMedium = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static const TextStyle themeTextLabelSmall = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 11,
    height: 1.45,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static const TextStyle themeTextTitleLarge = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 22,
    height: 1.27,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle themeTextTitleMedium = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static const TextStyle themeTextTitleSmall = TextStyle(
    fontFamily: FontFamily.poppins,
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );
}
