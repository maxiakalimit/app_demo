import 'dart:async';

import 'package:app_demo/app.dart';
import 'package:app_demo/config/theme/styles_config.dart';
import 'package:app_demo/data/datasources/mock_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/app_bloc_observer.dart';
import 'core/utils/logger_util.dart';
import 'data/repositories.dart';

Future<void> bootstrap() async {
  FlutterError.onError = (details) {
    LoggerUtil.logError(details.exceptionAsString(), stackTrace: details.stack);
  };

  FlutterError.onError = (details) {
    LoggerUtil.logError(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver.instance();

  final mockService = MockService();

  final repositories = Repositories(
    mockService: mockService,
  );

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      return runApp(RepositoryProvider<Repositories>(
        create: (context) => repositories,
        child: Styles(
          light: StylesConfig.lightTheme,
          dark: StylesConfig.lightTheme,
          child: const App(),
        ),
      ));
    },
    (exception, stackTrace) => LoggerUtil.logError,
  );
}
