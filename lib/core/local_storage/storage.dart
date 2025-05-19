import 'package:mbank_test_calendar/core/local_storage/secure_storage.dart';
import 'package:mbank_test_calendar/core/local_storage/shared_storage.dart';
import 'package:mbank_test_calendar/core/theme/app_theme.dart';

class Storage {
  factory Storage() => _instance;
  Storage._internal();

  static final _instance = Storage._internal();
  final _secureStorage = SecureStorage();
  final _sharedStorage = SharedStorage();

  Future<void> initialize() async {
    await _sharedStorage.initialize();
  }

  void writeToSharedStorage(String key, dynamic value) {
    if (value is bool) {
      _sharedStorage.setBool(key, value);
    } else if (value is String) {
      _sharedStorage.setString(key, value);
    } else if (value is List<String>) {
      _sharedStorage.setStringList(key, value);
    }
  }

  Future<void> clear() async {
    await _secureStorage.deleteAll();
    await _sharedStorage.clear();
  }

  T get<T>(String key, T defVal) => _sharedStorage.get<T>(key) ?? defVal;

  String get fullName {
    final String givenName = _sharedStorage.get('givenName') ?? '';
    final String familyName = _sharedStorage.get('familyName') ?? '';
    final String middleName = _sharedStorage.get('middleName') ?? '';

    return '$givenName $middleName $familyName';
  }

  String get username => _sharedStorage.get('givenName') ?? '';

  bool get isNotificationEnabledOnLogin {
    return _sharedStorage.get<bool>('isNotificationEnabledOnLogin') ?? true;
  }

  void saveNotificationEnabledOnLogin(bool val) async {
    await _sharedStorage.setBool('isNotificationEnabledOnLogin', val);
  }

  Future<String?> get customerId async {
    final customerId = await _secureStorage.read('customerId');

    return customerId;
  }

  Future<void> saveCustomerId(String value) async {
    await _secureStorage.write('customerId', value);
  }

  Future<String?> get fcmToken async {
    return await _secureStorage.read('fcmToken');
  }

  Future<void> saveFcmToken(String val) async {
    await _secureStorage.write('fcmToken', val);
  }

  Future<String?> getFcmToken() async {
    return fcmToken;
  }

  bool get isDeviceRegistered {
    return _sharedStorage.get<bool>('isDeviceRegistered') ?? false;
  }

  void saveDeviceRegistered(bool val) {
    _sharedStorage.setBool('isDeviceRegistered', val);
  }

  Future<void> saveGivenName(String val) async {
    writeToSharedStorage('givenName', val);
  }

  void saveFamilyName(String val) => writeToSharedStorage('familyName', val);

  void saveMiddleName(String val) => writeToSharedStorage('middleName', val);

  void saveSessionId(String val) => writeToSharedStorage('sessionId', val);

  String get sessionId => _sharedStorage.get<String>('sessionId') ?? "";

  void saveGivenNameLatin(String val) =>
      writeToSharedStorage('givenNameLatin', val);

  void saveFamilyNameLatin(String val) =>
      writeToSharedStorage('familyNameLatin', val);

  void saveMiddleNameLatin(String val) =>
      writeToSharedStorage('middleNameLatin', val);

  // Future<String> generateInstallId() async {
  //   final uuid = const Uuid().v4();
  //   // await _secureStorage.write('installId', uuid);
  //   writeToSharedStorage('installId', uuid);

  //   return uuid;
  // }

  Future<String?> get installId => _secureStorage.read('installId');

  Future<void> saveSelectedLocale(String locale) async {
    await _sharedStorage.setString('locale', locale);
  }

  String? get selectedLocale => _sharedStorage.get<String?>('locale');

  void saveLanguageList(List<String> languages) {
    _sharedStorage.setStringList('languages', languages);
  }

  List<String> get languageList =>
      _sharedStorage.get<List<String>>('languages') ?? [];

  bool get isFirstRun =>
      _sharedStorage.get<bool>('manasAirportFirstRun') ?? true;

  Future<void> setRunned() =>
      _sharedStorage.setBool('manasAirportFirstRun', false);

  Future<void> saveBioAuthKey({required String bioKey}) async {
    await _secureStorage.write('biometricKey', bioKey);
  }

  Future<String?> getBioAuthKey() async {
    return await _secureStorage.read('biometricKey');
  }

  Future<void> deleteBioAuthKey() async {
    await _secureStorage.delete('biometricKey');
  }

  AppThemeMode getAppTheme() {
    final resp = _sharedStorage.get<String>('appTheme');
    return AppThemeMode.values.firstWhere(
      (e) => e.name == resp,
      orElse: () => AppThemeMode.light,
    );
  }

  setAppTheme(AppThemeMode mode) {
    _sharedStorage.setString('appTheme', mode.name);
  }

  Future<String> getAccessToken() async {
    // Асинхронное получение токена
    return _sharedStorage.get<String>('access') ?? '';
  }

  Future<bool> getIsRegistered() async {
    // Асинхронное получение статуса регистрации
    return _sharedStorage.get<bool>('isRegistered') ?? false;
  }

  Future<void> saveAccessToken(String token) async {
    await _sharedStorage.setString('access', token);
  }

  Future<void> saveIsRegistered(bool value) async {
    await _sharedStorage.setBool('isRegistered', value);
  }

  Future<void> saveRefreshToken(String token) async {
    await _sharedStorage.setString('refresh', token);
  }

  String get refreshToken {
    return _sharedStorage.get<String>('refresh') ?? '';
  }

  void saveUserId(int userId) {
    _sharedStorage.setInt('userId', userId);
  }

  int get userId {
    return _sharedStorage.get<int>('userId') ?? -1;
  }

  void saveAvatarUrl(String url) {
    _sharedStorage.setString('avatarUrl', url);
  }

  String get avatarUrl {
    return _sharedStorage.get<String>('avatarUrl') ?? '';
  }

  Future<bool> saveLoginPassed() {
    return _sharedStorage.setBool('loginPassed', true);
  }

  bool get loginPassed {
    return _sharedStorage.get<bool>('loginPassed') ?? false;
  }

  Future<bool> isReferalUsed() async {
    return await _sharedStorage.setBool('referalUsed', true);
  }

  bool get referalUsed {
    return _sharedStorage.get<bool>('referalUsed') ?? false;
  }

  Future<bool> saveIsSocialLogin() async {
    return await _sharedStorage.setBool('isSocialLogin', true);
  }

  bool get isSocialLogin {
    return _sharedStorage.get<bool>('isSocialLogin') ?? false;
  }

  Future<void> saveBool(String key, bool value) async {
    await _sharedStorage.setBool(key, value);
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return _sharedStorage.get<bool>(key) ?? defaultValue;
  }
}
