import 'package:logger/logger.dart';

class Log {
  static Logger logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      methodCount: 0,
    ),
  );

  static debug(data) {
    logger.d(debug);
  }

  static verbose(data) {
    logger.v(data);
  }

  static info(data) {
    logger.i(data);
  }

  static warning(data) {
    logger.w(data);
  }

  static error(data) {
    logger.e(data);
  }

  static wtf(data) {
    logger.wtf(data);
  }
}
