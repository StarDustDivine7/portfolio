import 'package:my_portfolio/core/app_export.dart';

class CustomTextStyle {
  static extraBold({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 22.fSize,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.textColor,
        fontFamily: "KanitBold");
  }

  static extraLight({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 16.fSize,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.textColor,
        fontFamily: "KanitThin");
  }

  static regularText({Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 16.fSize,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.textColor,
        fontFamily: "KanitRegular");
  }

  static boldText(
      {Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      TextDecoration? decoration}) {
    return TextStyle(
        fontSize: fontSize ?? 18.fSize,
        fontWeight: fontWeight ?? FontWeight.w700,
        color: color ?? AppColors.textColor,
        decoration: decoration,
        letterSpacing: 1,
        fontFamily: "KanitBold");
  }

  static semiBoldText(
      {Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      TextDecoration? decoration}) {
    return TextStyle(
        fontSize: fontSize ?? 16.fSize,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? AppColors.textColor,
        decoration: decoration,
        fontFamily: "KanitMedium");
  }
}
