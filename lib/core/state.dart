import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This must be initialized before use, in main.dart.
final prefProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final logLevelProvider = StateNotifierProvider<LogLevelNotifier, Level>(
    (ref) => LogLevelNotifier(Logger.root.level));

class LogLevelNotifier extends StateNotifier<Level> {
  LogLevelNotifier(Level level) : super(level);

  void setLogLevel(Level level) {
    Logger.root.level = level;
    state = level;
  }
}

final isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;