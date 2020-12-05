import 'package:data_connection_checker/data_connection_checker.dart';

class Checker {
  static Future<bool> get connectionStatus =>
      DataConnectionChecker().hasConnection;
}
