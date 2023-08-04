import 'package:flutter/widgets.dart';

import 'generated/app_localizations.g.dart';

export 'generated/app_localizations.g.dart';

extension L10n on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
