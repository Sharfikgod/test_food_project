import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  static const _baseUrl = ''; //add api
  String get baseUrl => _baseUrl;
  AppConfig();
}
