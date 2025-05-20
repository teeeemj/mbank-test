class Tokens {
  static String? client;

  static String? access;

  /// Access token expiration as time stamp.
  static DateTime? accessExpiry;

  /// Refresh token to use renew access token.
  static String? refresh;

  static reset() {
    access = null;
    refresh = null;
    accessExpiry = null;
  }

  static void save(String accessToken, String? refreshToken, int expiresIn) {
    access = accessToken;
    final expiry = DateTime.now().add(Duration(seconds: expiresIn));
    accessExpiry = expiry;
    if (refreshToken != null) {
      Tokens.refresh = refreshToken;
    }
  }
}
