
import 'package:logger/logger.dart';

class Log{

  Logger? _logger;
  Log._internal(){
    _instance = this;
  }

  factory Log() => _instance;
  static Log _instance = Log._internal();

  init({
    LogFilter? filter,
    LogPrinter? printer,
    LogOutput? output,
    Level? level,
  }){
    _logger = Logger(filter: filter,printer: printer,output: output,level: level);
  }

  bool checkInit(){
    if (_logger == null) {
      return false;
    } else {
      return true;
    }
  }
  void t(String tag,String msg) {
    if(!checkInit()) {
      Logger(printer: PrefixPrinter(PrettyPrinter())).t("未初始化");
      return;
    }
    _logger?.t("$tag :: $msg");
  }

  void d(String tag,String msg) {
    if(!checkInit()) {
      Logger().t("未初始化");
      return;
    }
    _logger?.d("$tag :: $msg");
  }

  void i(String tag,String msg) {
    if(!checkInit()) {
      Logger().t("未初始化");
      return;
    }
    _logger?.i("$tag :: $msg");
  }

  void w(String tag,String msg) {
    if(!checkInit()) {
      Logger().t("未初始化");
      return;
    }
    _logger?.w("$tag :: $msg");
  }

  void e(String tag,String msg) {
    if(!checkInit()) {
      Logger().t("未初始化");
      return;
    }
    _logger?.e("$tag :: $msg");
  }

  void f(String tag,String msg) {
    if(!checkInit()) {
      Logger().t("未初始化");
      return;
    }
    _logger?.f("$tag :: $msg");
  }
}