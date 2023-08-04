part of '../styles_config.dart';

const _defaultFontFamily = 'BrutalType';
const _defaultColor = AppColors.blackBase;

abstract class AppTextStyles {
  static const headerXXL = TextStyle(
    color: _defaultColor,
    fontSize: 28.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.28571428571,
    fontFamily: _defaultFontFamily,
  );

  static const headerXL = TextStyle(
    color: _defaultColor,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.33333333333,
    fontFamily: _defaultFontFamily,
  );

  static const headerL = TextStyle(
    color: _defaultColor,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.55555555556,
    fontFamily: _defaultFontFamily,
  );

  static const headerM = TextStyle(
    color: _defaultColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.5,
    fontFamily: _defaultFontFamily,
  );

  static const headerS = TextStyle(
    color: _defaultColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.42857142857,
    fontFamily: _defaultFontFamily,
  );

  static const headerXS = TextStyle(
    color: _defaultColor,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.5,
    fontFamily: _defaultFontFamily,
  );

  static const textXL = TextStyle(
    color: _defaultColor,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.55555555556,
    fontFamily: _defaultFontFamily,
  );

  static const textL = TextStyle(
    color: _defaultColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.5,
    fontFamily: _defaultFontFamily,
  );

  static const textM = TextStyle(
    color: _defaultColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.42857142857,
    fontFamily: _defaultFontFamily,
  );

  static const textS = TextStyle(
    color: _defaultColor,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.5,
    fontFamily: _defaultFontFamily,
  );

  static const textXS = TextStyle(
    color: _defaultColor,
    fontSize: 11.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.0,
    fontFamily: _defaultFontFamily,
  );
}

abstract class AppColors {
  // Grey
  static const Color greyBase = Color(0xFFF7F7F5);
  static const Color greyLight = Color(0xFFF2F2F2);
  static const Color greyMedium = Color(0xFFECECEC);
  static const Color greyDark = Color(0xFFDCDCDC);
  static const Color greyDarkest = Color(0xFFA8A8A8);

  // Accent
  static const Color accentBase = Color(0xFF84F962);
  static const Color accentDark = Color(0xFF71F84A);
  static const Color accentLight = Color(0xFFC2FCB1);

  // White
  static const Color whiteBase = Color(0xFFFFFFFF);
  static final Color white75 = const Color(0xFFFFFFFF).withOpacity(0.75);
  static final Color white30 = const Color(0xFFFFFFFF).withOpacity(0.3);
  static final Color white15 = const Color(0xFFFFFFFF).withOpacity(0.15);
  static final LinearGradient whiteVerticalGradient = LinearGradient(
    colors: [
      whiteBase.withOpacity(0.0),
      whiteBase,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Black
  static const Color blackBase = Color(0xFF212121);
  static final Color black75 = const Color(0xFF212121).withOpacity(0.75);
  static final Color black30 = const Color(0xFF212121).withOpacity(0.3);
  static final Color black15 = const Color(0xFF212121).withOpacity(0.15);
  static final LinearGradient blackVerticalGradient = LinearGradient(
    colors: [
      blackBase.withOpacity(0.0),
      blackBase,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Error
  static const Color errorBase = Color(0xFFFF626D);
  static const Color errorLight = Color(0xFFFFE7E9);

  // Notify
  static const Color notifyBase = Color(0xFFFFEC85);
  static const Color notifyLight = Color(0xFFFFF5C2);
}
