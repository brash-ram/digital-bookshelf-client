import 'package:digital_bookshelf_client/core/storages/secure_storage.dart';


class TokenStorage {
  final SecureStorage secureStorage;

  static const accessToken = 'access-token';
  static const refreshToken = 'refresh-token';

  TokenStorage({
    required this.secureStorage,
  });

  Future<void> storeAccessToken(String token) {
    return secureStorage.putString(
      key: accessToken,
      value: token,
    );
  }

  Future<String?> getAccessToken() {
    return secureStorage.getString(key: accessToken,);
  }

  Future<void> storeRefreshToken(String token) {
    return secureStorage.putString(
      key: refreshToken,
      value: token,
    );
  }

  Future<String?> getRefreshToken() {
    return secureStorage.getString(key: refreshToken,);
  }

  Future<bool> hasToken() async {
    final String? accessToken = await getAccessToken();
    return accessToken != null;
  }

  Future<void> removeTokens() {
    secureStorage.remove(key: accessToken,);
    return secureStorage.remove(key: refreshToken,);
  }

  Future<void> clear() {
    return Future.wait([
      removeTokens(),
    ]);
  }
}
