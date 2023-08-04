import 'package:intl/intl.dart';

import 'logger_util.dart';

const String _defaultCurrency = 'AED';
const String _defaultLocale = 'en_US';

abstract class Format {
  static String price(String price) {
    if (price.isEmpty) {
      return price;
    }

    try {
      return '$_defaultCurrency ${NumberFormat.currency(
        locale: _defaultLocale,
        symbol: '',
        decimalDigits: 0,
      ).format(double.parse(price))}';
    } on FormatException catch (_) {
      return '';
    } on Object catch (err, stackTrace) {
      LoggerUtil.logError(err, stackTrace: stackTrace);

      return '';
    }
  }
}
