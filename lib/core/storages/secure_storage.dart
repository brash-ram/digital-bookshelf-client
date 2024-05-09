import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {

  SecureStorage({
    required this.flutterSecureStorage,
  });

  final FlutterSecureStorage flutterSecureStorage;

  Future<void> putString({
    required String key,
    required String value,
  }) async => flutterSecureStorage.write(
      key: key,
      value: value,
    );

  Future<String?> getString({
    required String key,
  }) async => flutterSecureStorage.read(
      key: key,
    );

  Future<void> remove({
    required String key,
  }) async => flutterSecureStorage.delete(
      key: key,
    );

  Future<void> removeAll() async => flutterSecureStorage.deleteAll();
}
