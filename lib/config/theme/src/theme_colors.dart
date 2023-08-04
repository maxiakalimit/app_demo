part of '../styles_config.dart';

class ThemeColors {
  // Grey
  final Color greyBase;
  final Color greyLight;
  final Color greyMedium;
  final Color greyDark;
  final Color greyDarkest;

  // Primary
  final Color accentBase;
  final Color accentDark;
  final Color accentLight;

  // White
  final Color whiteBase;
  final Color white75;
  final Color white30;
  final Color white15;
  final LinearGradient whiteVerticalGradient;

  // Black
  final Color blackBase;
  final Color black75;
  final Color black30;
  final Color black15;
  final LinearGradient blackVerticalGradient;

  // Error
  final Color errorBase;
  final Color errorLight;

  // Notify
  final Color notifyBase;
  final Color notifyLight;

  ThemeColors({
    required this.greyBase,
    required this.greyLight,
    required this.greyMedium,
    required this.greyDark,
    required this.greyDarkest,
    required this.accentBase,
    required this.accentDark,
    required this.accentLight,
    required this.whiteBase,
    required this.white75,
    required this.white30,
    required this.white15,
    required this.whiteVerticalGradient,
    required this.blackBase,
    required this.black75,
    required this.black30,
    required this.black15,
    required this.blackVerticalGradient,
    required this.errorBase,
    required this.errorLight,
    required this.notifyBase,
    required this.notifyLight,
  });

  ThemeColors copyWith({
    Color? greyBase,
    Color? greyLight,
    Color? greyMedium,
    Color? greyDark,
    Color? greyDarkest,

    // Primary
    Color? accentBase,
    Color? accentDark,
    Color? accentLight,

    // White
    Color? whiteBase,
    Color? white75,
    Color? white30,
    Color? white15,
    LinearGradient? whiteVerticalGradient,

    // White
    Color? blackBase,
    Color? black75,
    Color? black30,
    Color? black15,
    LinearGradient? blackVerticalGradient,

    // Warning
    Color? errorBase,
    Color? errorLight,

    // Yellow
    Color? notifyBase,
    Color? notifyLight,
  }) {
    return ThemeColors(
      greyBase: greyBase ?? this.greyBase,
      greyLight: greyLight ?? this.greyLight,
      greyMedium: greyMedium ?? this.greyMedium,
      greyDark: greyDark ?? this.greyDark,
      greyDarkest: greyDarkest ?? this.greyDarkest,
      accentBase: accentBase ?? this.accentBase,
      accentDark: accentDark ?? this.accentDark,
      accentLight: accentLight ?? this.accentLight,
      whiteBase: whiteBase ?? this.whiteBase,
      white75: white75 ?? this.white75,
      white30: white30 ?? this.white30,
      white15: white15 ?? this.white15,
      whiteVerticalGradient:
          whiteVerticalGradient ?? this.whiteVerticalGradient,
      blackBase: blackBase ?? this.blackBase,
      black75: black75 ?? this.black75,
      black30: black30 ?? this.black30,
      black15: black15 ?? this.black15,
      blackVerticalGradient:
          blackVerticalGradient ?? this.blackVerticalGradient,
      errorBase: errorBase ?? this.errorBase,
      errorLight: errorLight ?? this.errorLight,
      notifyBase: notifyBase ?? this.notifyBase,
      notifyLight: notifyLight ?? this.notifyLight,
    );
  }

  ThemeColors lerp(
    ThemeColors? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      greyBase: Color.lerp(greyBase, other.greyBase, t)!,
      greyLight: Color.lerp(greyLight, other.greyLight, t)!,
      greyMedium: Color.lerp(greyMedium, other.greyMedium, t)!,
      greyDark: Color.lerp(greyDark, other.greyDark, t)!,
      greyDarkest: Color.lerp(greyDarkest, other.greyDarkest, t)!,
      accentBase: Color.lerp(accentBase, other.accentBase, t)!,
      accentDark: Color.lerp(accentDark, other.accentDark, t)!,
      accentLight: Color.lerp(accentLight, other.accentLight, t)!,
      whiteBase: Color.lerp(whiteBase, other.whiteBase, t)!,
      white75: Color.lerp(white75, other.white75, t)!,
      white30: Color.lerp(white30, other.white30, t)!,
      white15: Color.lerp(white15, other.white15, t)!,
      whiteVerticalGradient: LinearGradient.lerp(
        whiteVerticalGradient,
        other.whiteVerticalGradient,
        t,
      )!,
      blackBase: Color.lerp(blackBase, other.blackBase, t)!,
      black75: Color.lerp(black75, other.black75, t)!,
      black30: Color.lerp(black30, other.black30, t)!,
      black15: Color.lerp(black15, other.black15, t)!,
      blackVerticalGradient: LinearGradient.lerp(
        blackVerticalGradient,
        other.blackVerticalGradient,
        t,
      )!,
      errorBase: Color.lerp(errorBase, other.errorBase, t)!,
      errorLight: Color.lerp(errorLight, other.errorLight, t)!,
      notifyBase: Color.lerp(notifyBase, other.notifyBase, t)!,
      notifyLight: Color.lerp(notifyLight, other.notifyLight, t)!,
    );
  }

  static final light = ThemeColors(
    greyBase: AppColors.greyBase,
    greyLight: AppColors.greyLight,
    greyMedium: AppColors.greyMedium,
    greyDark: AppColors.greyDark,
    greyDarkest: AppColors.greyDarkest,
    accentBase: AppColors.accentBase,
    accentDark: AppColors.accentDark,
    accentLight: AppColors.accentLight,
    whiteBase: AppColors.whiteBase,
    white75: AppColors.white75,
    white30: AppColors.white30,
    white15: AppColors.white15,
    whiteVerticalGradient: AppColors.whiteVerticalGradient,
    blackBase: AppColors.blackBase,
    black75: AppColors.black75,
    black30: AppColors.black30,
    black15: AppColors.black15,
    blackVerticalGradient: AppColors.blackVerticalGradient,
    errorBase: AppColors.errorBase,
    errorLight: AppColors.errorLight,
    notifyBase: AppColors.notifyBase,
    notifyLight: AppColors.notifyLight,
  );

  static final dark = light;
}
