import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:flutter/material.dart';

enum TextType {
  headerXXL,
  headerXL,
  headerL,
  headerM,
  headerS,
  headerXS,
  textXL,
  textL,
  textM,
  textS,
  textXS,
}

class CText extends StatelessWidget {
  final String title;
  final TextType? type;
  final TextStyle? style;
  final Color? color;
  final double? height;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;

  const CText(
      this.title, {
        Key? key,
        this.type,
        this.style,
        this.color,
        this.height,
        this.textAlign,
        this.fontWeight,
        this.fontStyle,
        this.maxLines,
        this.overflow,
        this.textDecoration,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = context.styles();
    TextStyle? textStyle;

    if (type != null) {
      switch (type) {
        case TextType.headerXXL:
          textStyle = s.text.headerXXL;
          break;
        case TextType.headerXL:
          textStyle = s.text.headerXL;
          break;
        case TextType.headerL:
          textStyle = s.text.headerL;
          break;
        case TextType.headerM:
          textStyle = s.text.headerM;
          break;
        case TextType.headerS:
          textStyle = s.text.headerS;
          break;
        case TextType.headerXS:
          textStyle = s.text.headerXS;
          break;
        case TextType.textXL:
          textStyle = s.text.textXL;
          break;
        case TextType.textL:
          textStyle = s.text.textL;
          break;
        case TextType.textM:
          textStyle = s.text.textM;
          break;
        case TextType.textS:
          textStyle = s.text.textS;
          break;
        case TextType.textXS:
          textStyle = s.text.textXS;
          break;
        default:
          textStyle = null;
      }
    }

    if (style != null) {
      textStyle = style;
    }

    if (color != null) {
      textStyle = textStyle?.copyWith(color: color);
    }

    if (height != null) {
      textStyle = textStyle?.copyWith(height: height);
    }

    if (fontWeight != null) {
      textStyle = textStyle?.copyWith(fontWeight: fontWeight);
    }

    if (fontStyle != null) {
      textStyle = textStyle?.copyWith(fontStyle: fontStyle);
    }

    if (textDecoration != null) {
      textStyle = textStyle?.copyWith(decoration: textDecoration);
    }

    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      style: textStyle,
      overflow: overflow,
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: true,
        applyHeightToLastDescent: true,
        leadingDistribution: TextLeadingDistribution.even,
      ),
    );
  }
}
