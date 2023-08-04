library styles_config;

import 'package:flutter/material.dart';

part 'src/constants.dart';
part 'src/styles.dart';
part 'src/theme_colors.dart';
part 'src/theme_config.dart';
part 'src/theme_text_styles.dart';

class StylesConfig {
  static final StylesThemeData lightTheme = StylesThemeData(
    themeData: ThemeConfig.lightTheme,
    themeColor: ThemeColors.light,
    text: TextThemeStyles.light,
    spacing: const SpacingData(
      s: 2,
      s2: 4,
      s4: 8,
      s5: 10,
      s6: 12,
      s8: 16,
      s12: 24,
      s14: 28,
      s16: 32,
      s24: 48,
      s32: 64,
      s48: 72,
      s64: 128,
    ),
    size: SizeData(
      borderRadius: 8.0,
      borderRadiusM: 12.0,
      borderRadiusL: 24.0,
      icon: 18.0,
      iconM: 20.0,
      iconL: 22.0,
      iconXL: 28.0,
    ),
    padding: PaddingData(
      base: 20.0,
      global: 16.0,
      modal: 24.0,
      onboarding: 32.0,
    ),
    animation: AnimationData(
      duration100: 130,
      duration200: 160,
      duration300: 190,
      duration400: 220,
      duration500: 250,
      duration600: 400,
      duration700: 550,
      duration800: 700,
      duration900: 850,
      duration1000: 1000,
    ),
  );
}
