// Flutter imports:
import 'package:flutter/foundation.dart';
// Package imports:
import 'package:logger/logger.dart';

class ConsoleOutput extends LogOutput {
  // Create a singleton
  static final ConsoleOutput _consoleOutput = ConsoleOutput._internal();

  factory ConsoleOutput() {
    return _consoleOutput;
  }

  ConsoleOutput._internal();
  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      debugPrint(line);
    }
  }

  var logger = Logger(
    printer: PrettyPrinter(
      errorMethodCount: 8,
      lineLength: 120,
      levelColors: {
        Level.debug: const AnsiColor.fg(007),
        Level.info: const AnsiColor.fg(002),
        Level.warning: const AnsiColor.fg(009),
        Level.error: const AnsiColor.fg(002),
      },
      methodCount: 2,
      levelEmojis: {
        Level.debug: '🐛',
        Level.info: 'ℹ️',
        Level.warning: '⚠️',
        Level.error: '🚨',
      },
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  void _log(String message, {LogLevel level = LogLevel.debug}) {
    if (level == LogLevel.debug) {
      logger.d(message);
    } else if (level == LogLevel.info) {
      logger.i(message);
    } else if (level == LogLevel.warning) {
      logger.w(message);
    } else if (level == LogLevel.error) {
      logger.e(message);
    } else {
      logger.d(message);
    }
  }

  static void log(String message, {LogLevel level = LogLevel.error}) {
    if (!kReleaseMode) {
      _consoleOutput._log(message, level: level);
    }
  }
}

enum LogLevel {
  debug,
  info,
  warning,
  error,
}
