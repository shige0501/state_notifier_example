import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:state_notifier/state_notifier.dart';

class SecureRepository with LocatorMixin {
  factory SecureRepository() => _repository;
  SecureRepository._internal();

  static const accessToken = 'access_token';

  static final SecureRepository _repository = SecureRepository._internal();
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<void> putString(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String> getString(String key, String defaultValue) async {
    final value = await _secureStorage.read(key: key);
    return value ?? defaultValue;
  }
}