import 'package:easy_hotel/app/core/themes/app_theme.dart';
import 'package:easy_hotel/app/data/model/user/dto/response/refresh_token_response_dto.dart';
import 'package:get/get.dart';

import '../../data/model/auth/login/dto/response/login_response.dart';
import '../values/languages/app_translation.dart';
import 'app_storage.dart';

class UserManager{
  static final _manager = UserManager._();
  UserManager._();
  factory UserManager() => _manager;

  bool get isLoggedIn => AppStorage.read(AppStorage.IS_LOGGED_IN) ?? false;
  String get token => AppStorage.read(AppStorage.TOKEN_KEY) ?? '';
  String get rToken => AppStorage.read(AppStorage.REFRESH_TOKEN_KEY) ?? '';
  bool get isMale => user?.isMale == 1;
  // bool get isTokenExpired => DateTime.tryParse(AppStorage.read(AppStorage.TOKEN_EXPIRE_TIME_KEY)??'')?.isBefore(DateTime.now()) ?? false;

  User? get user => AppStorage.read(AppStorage.USER) == null ? null : User.fromJson(AppStorage.read(AppStorage.USER));


  login(LoginResponse data) {
    AppStorage.write(AppStorage.IS_LOGGED_IN, true);
    AppStorage.write(AppStorage.USER, data.user.toJson());
    AppStorage.write(AppStorage.TOKEN_KEY, data.accessToken);
    AppStorage.write(AppStorage.TOKEN_EXPIRE_TIME_KEY, data.expiresIn);
  }

  logout(){
    final isDark = AppTheme().isSavedDarkMode();
    var lang = AppStorage.read(AppStorage.LANGUAGE_KEY);
    AppStorage.removeAll();
    AppStorage.write(AppStorage.LANGUAGE_KEY, lang);
    AppTranslation().saveLocale(AppTranslation.getLocale());
    AppTheme().changeThemeMode(isDark);
    Get.forceAppUpdate();
  }

  // Future updateToken(RefreshTokenResponse data) async {
  //   await AppStorage.write(AppStorage.TOKEN_KEY, data.token);
  //   await AppStorage.write(AppStorage.REFRESH_TOKEN_KEY, data.refreshToken);
  //   await AppStorage.write(AppStorage.TOKEN_EXPIRE_TIME_KEY, data.expireDate.toIso8601String());
  // }


}