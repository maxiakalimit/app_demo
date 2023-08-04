import 'package:logger/logger.dart';

import 'services/logger/logger_flutter.dart';

class DebugLogOutput extends ConsoleOutput {
  final int bufferSize;
  static const _bufferSize = 150;

  DebugLogOutput([this.bufferSize = _bufferSize]);

  @override
  void output(OutputEvent event) {
    //Выводим логи в виджет консоли  на мобильном телефоне
    LogConsole.add(
      event,
      bufferSize: bufferSize,
    );
  }
}

//Разрешаем логи в release mode
//Для flavour == Flavour.production запрещаем вывод логов
class DebugLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class LoggerUtil {
  static LoggerUtil? _instance;
  final bool isProd;

  LoggerUtil._(this.isProd);

  factory LoggerUtil({required bool isProd}) {
    _instance ??= LoggerUtil._(isProd);

    return _instance!;
  }

  static final _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  static void logError(
    Object exception, {
    StackTrace? stackTrace,
  }) {
    try {
      if (exception is String) {
        return logMessage(
          exception,
          stackTrace: stackTrace,
          warning: true,
        );
      }
      _logger.e(exception, stackTrace: stackTrace ?? StackTrace.current);
    } on Object catch (error, stackTrace) {
      final errMessage = 'Произошло исключение "$error" в LoggerUtil.logError';
      _logger.e(errMessage, error: error, stackTrace: stackTrace);
    }
  }

  static void logMessage(
    String message, {
    StackTrace? stackTrace,
    bool warning = false,
  }) {
    try {
      if (warning) {
        _logger.w(message, stackTrace: stackTrace);
      } else {
        _logger.d(message, stackTrace: stackTrace);
      }
    } on Object catch (error, stackTrace) {
      final errMessage =
          'Произошло исключение "$error" в LoggerUtil.logMessage';
      _logger.e(errMessage, stackTrace: stackTrace);
    }
  }

  static void logInformation(String message) {
    final m = '[INFO] $message';

    try {
      _logger.i(m);
    } on Object catch (error, stackTrace) {
      final errMessage =
          'Произошло исключение "$error" в LoggerUtil.logInformation';
      _logger.e(errMessage, stackTrace: stackTrace);
    }
  }
}
