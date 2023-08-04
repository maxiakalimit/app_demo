part of '../styles_config.dart';

class ThemeConfig {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: _defaultFontFamily,
    canvasColor: AppColors.whiteBase,
    primaryColor: AppColors.blackBase,
    primaryColorDark: AppColors.blackBase,
    primaryColorLight: AppColors.whiteBase,
    highlightColor: AppColors.greyBase,
    disabledColor: AppColors.greyLight,
    focusColor: AppColors.accentBase,
    scaffoldBackgroundColor: AppColors.whiteBase,
    splashColor: AppColors.whiteBase,
    //horizontal sliding transitions for routes for all mobile platforms
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.fuchsia: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
