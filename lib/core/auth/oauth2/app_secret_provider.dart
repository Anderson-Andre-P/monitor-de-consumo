import 'package:ie_tec_app/constants/app_constants.dart';

abstract class AppSecretProvider {
  Future<String> getAppSecret();

  factory AppSecretProvider.local() => _LocalAppSecretProvider();
}

/// Not for production (only for debugging)
class _LocalAppSecretProvider implements AppSecretProvider {
  @override
  Future<String> getAppSecret() async {
    // return ThingsboardAppConstants.thingsboardOAuth2AppSecret;
    return "Null";
  }
}
