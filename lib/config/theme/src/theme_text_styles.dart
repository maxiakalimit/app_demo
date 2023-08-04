part of '../styles_config.dart';

//ignore_for_file: long-method, long-parameter-list
class TextThemeStyles {
  final TextStyle headerXXL;
  final TextStyle headerXL;
  final TextStyle headerL;
  final TextStyle headerM;
  final TextStyle headerS;
  final TextStyle headerXS;
  final TextStyle textXL;
  final TextStyle textL;
  final TextStyle textM;
  final TextStyle textS;
  final TextStyle textXS;

  TextThemeStyles({
    required this.headerXXL,
    required this.headerXL,
    required this.headerL,
    required this.headerM,
    required this.headerS,
    required this.headerXS,
    required this.textXL,
    required this.textL,
    required this.textM,
    required this.textS,
    required this.textXS,
  });

  TextThemeStyles copyWith({
    TextStyle? headerXXL,
    TextStyle? headerXL,
    TextStyle? headerL,
    TextStyle? headerM,
    TextStyle? headerS,
    TextStyle? headerXS,
    TextStyle? textXL,
    TextStyle? textL,
    TextStyle? textM,
    TextStyle? textS,
    TextStyle? textXS,
  }) {
    return TextThemeStyles(
      headerXXL: headerXXL ?? this.headerXXL,
      headerXL: headerXL ?? this.headerXL,
      headerL: headerL ?? this.headerL,
      headerM: headerM ?? this.headerM,
      headerS: headerS ?? this.headerS,
      headerXS: headerXS ?? this.headerXS,
      textXL: textXL ?? this.textXL,
      textL: textL ?? this.textL,
      textM: textM ?? this.textM,
      textS: textS ?? this.textS,
      textXS: textXS ?? this.textXS,
    );
  }

  TextThemeStyles lerp(
    TextThemeStyles? other,
    double t,
  ) {
    if (other is! TextThemeStyles) {
      return this;
    }

    return TextThemeStyles(
      headerXXL: TextStyle.lerp(headerXXL, other.headerXXL, t)!,
      headerXL: TextStyle.lerp(headerXL, other.headerXL, t)!,
      headerL: TextStyle.lerp(headerL, other.headerL, t)!,
      headerM: TextStyle.lerp(headerM, other.headerM, t)!,
      headerS: TextStyle.lerp(headerS, other.headerS, t)!,
      headerXS: TextStyle.lerp(headerXS, other.headerXS, t)!,
      textXL: TextStyle.lerp(textXL, other.textXL, t)!,
      textL: TextStyle.lerp(textL, other.textL, t)!,
      textM: TextStyle.lerp(textM, other.textM, t)!,
      textS: TextStyle.lerp(textS, other.textS, t)!,
      textXS: TextStyle.lerp(textXS, other.textXS, t)!,
    );
  }

  static TextThemeStyles get light => TextThemeStyles(
        headerXXL: AppTextStyles.headerXXL,
        headerXL: AppTextStyles.headerXL,
        headerL: AppTextStyles.headerL,
        headerM: AppTextStyles.headerM,
        headerS: AppTextStyles.headerS,
        headerXS: AppTextStyles.headerXS,
        textXL: AppTextStyles.textXL,
        textL: AppTextStyles.textL,
        textM: AppTextStyles.textM,
        textS: AppTextStyles.textS,
        textXS: AppTextStyles.textXS,
      );

  static TextThemeStyles get dark => light;
}
