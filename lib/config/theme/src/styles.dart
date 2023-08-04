part of '../styles_config.dart';

class StylesThemeData {
  // ignore: avoid-late-keyword
  late ThemeData themeData;
  final ThemeColors themeColor;

  final TextThemeStyles text;
  final SpacingData spacing;
  final SizeData size;
  final PaddingData padding;
  final AnimationData animation;

  StylesThemeData({
    required this.themeData,
    required this.themeColor,
    required this.text,
    required this.spacing,
    required this.size,
    required this.padding,
    required this.animation,
  });
}

class SpacingData {
  final double s;
  final double s2;
  final double s4;
  final double s5;
  final double s6;
  final double s8;
  final double s12;
  final double s14;
  final double s16;
  final double s24;
  final double s32;
  final double s48;
  final double s64;

  const SpacingData({
    required this.s,
    required this.s2,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s8,
    required this.s12,
    required this.s14,
    required this.s16,
    required this.s24,
    required this.s32,
    required this.s48,
    required this.s64,
  });
}

class SizeData {
  final double borderRadius;
  final double borderRadiusM;
  final double borderRadiusL;
  final double icon;
  final double iconM;
  final double iconL;
  final double iconXL;

  SizeData({
    required this.borderRadius,
    required this.borderRadiusM,
    required this.borderRadiusL,
    required this.icon,
    required this.iconM,
    required this.iconL,
    required this.iconXL,
  });
}

class PaddingData {
  final double base;
  final double global;
  final double modal;
  final double onboarding;

  PaddingData({
    required this.base,
    required this.global,
    required this.modal,
    required this.onboarding,
  });
}

class AnimationData {
  //micro
  final int duration100;
  final int duration200;
  final int duration300;
  final int duration400;

  //macro
  final int duration500;
  final int duration600;
  final int duration700;
  final int duration800;
  final int duration900;
  final int duration1000;

  AnimationData({
    required this.duration100,
    required this.duration200,
    required this.duration300,
    required this.duration400,
    required this.duration500,
    required this.duration600,
    required this.duration700,
    required this.duration800,
    required this.duration900,
    required this.duration1000,
  });

//macro
}

class Styles extends StatelessWidget {
  final StylesThemeData light;
  final StylesThemeData dark;
  final Widget child;

  const Styles({
    required this.light,
    required this.dark,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final data = brightness == Brightness.light ? light : dark;

    return _InheritedStyles(
      data: data,
      child: Theme(
        data: data.themeData,
        child: child,
      ),
    );
  }

  static StylesThemeData of(BuildContext context) {
    final theme = Theme.of(context);

    //ignore: avoid-non-null-assertion
    return context.dependOnInheritedWidgetOfExactType<_InheritedStyles>()!.data
      ..themeData = theme;
  }
}

class _InheritedStyles extends InheritedWidget {
  final StylesThemeData data;

  const _InheritedStyles({
    required this.data,
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget != this;
}
