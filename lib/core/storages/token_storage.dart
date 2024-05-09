import 'package:digital_bookshelf_client/core/storages/secure_storage.dart';


class TokenStorage {

  TokenStorage({
    required this.secureStorage,
  });
  final SecureStorage secureStorage;

  static const accessToken = 'access-token';
  static const refreshToken = 'refresh-token';

  Future<void> storeAccessToken(String token) => secureStorage.putString(
      key: accessToken,
      value: token,
    );

  Future<String?> getAccessToken() => secureStorage.getString(key: accessToken,);

  Future<void> storeRefreshToken(String token) => secureStorage.putString(
      key: refreshToken,
      value: token,
    );

  Future<String?> getRefreshToken() => secureStorage.getString(key: refreshToken,);

  Future<bool> hasToken() async {
    final accessToken = await getAccessToken();
    return accessToken != null;
  }

  Future<void> removeTokens() {
    secureStorage.remove(key: accessToken,);
    return secureStorage.remove(key: refreshToken,);
  }

  Future<void> clear() => Future.wait([
      removeTokens(),
    ]);
}
