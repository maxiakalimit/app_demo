import 'package:app_demo/config/l10n/l10n.dart';
import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:flutter/material.dart';

import 'c_text.dart';

class ErrorInfoWidget extends StatelessWidget {
  final String? title;
  final String? errorMessage;
  final String? btnName;
  final void Function() onPressed;

  const ErrorInfoWidget({
    Key? key,
    this.title,
    this.errorMessage,
    this.btnName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: styles.padding.base),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CText(
            title ?? context.l10n.defaultErrorTitle,
            type: TextType.headerXL,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: styles.spacing.s4),
          CText(
            errorMessage ?? context.l10n.defaultErrorMessage,
            type: TextType.textXL,
            color: styles.themeColor.greyDarkest,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: styles.spacing.s16),
          // ButtonWidget(ButtonType.primary).build(
          //   context: context,
          //   text: btnName ?? context.l10n.errorRetryBtn,
          //   onPressed: onPressed,
          // ),
        ],
      ),
    );
  }
}
