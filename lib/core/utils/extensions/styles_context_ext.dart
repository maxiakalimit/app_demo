import 'package:flutter/material.dart';

import '../../../config/theme/styles_config.dart';

/// Exposes the [styles] method.
extension StylesContext on BuildContext {
  /// Calling this method is equivalent to calling:
  ///
  /// ```dart
  /// context.styles()
  /// ```
  ///
  /// This method is accessible only inside [StatelessWidget.build] and
  /// [State.build].\
  /// If you need to use it outside of these methods, consider using [Styles.of]
  /// instead, which doesn't have this restriction.\
  StylesThemeData styles() {
    return Styles.of(this);
  }
}
