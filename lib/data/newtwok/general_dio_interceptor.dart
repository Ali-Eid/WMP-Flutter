import 'package:dio/dio.dart';

import '../../app/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor(this.appPreferences);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await appPreferences.getUserToken();
    String lang = await appPreferences.getAppLanguage();
    if (token.isNotEmpty) options.headers["authorization"] = "Bearer $token";
    if (lang.isNotEmpty) options.headers["lang"] = lang;
    super.onRequest(options, handler);
  }
}
