class LogColors {
  static const String reset = '\x1B[0m';
  static const String red = '\x1B[31m';
  static const String green = '\x1B[32m';
  static const String yellow = '\x1B[33m';
  static const String blue = '\x1B[34m';
  static const String magenta = '\x1B[35m';
  static const String cyan = '\x1B[36m';
}

extension ColorfulString on String {
  String get red => '${LogColors.red}$this${LogColors.reset}';
  String get green => '${LogColors.green}$this${LogColors.reset}';
  String get yellow => '${LogColors.yellow}$this${LogColors.reset}';
  String get blue => '${LogColors.blue}$this${LogColors.reset}';
  String get magenta => '${LogColors.magenta}$this${LogColors.reset}';
  String get cyan => '${LogColors.cyan}$this${LogColors.reset}';

  void log() => print(this);
}
