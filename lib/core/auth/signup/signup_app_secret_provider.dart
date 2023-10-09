import 'package:ie_tec_app/constants/app_constants.dart';

abstract class SignUpAppSecretProvider {
  Future<String> getSignUpAppSecret();

  factory SignUpAppSecretProvider.local() => _LocalSignUpAppSecretProvider();
}

/// Not for production (only for debugging)
class _LocalSignUpAppSecretProvider implements SignUpAppSecretProvider {
  @override
  Future<String> getSignUpAppSecret() async {
    // return ThingsboardAppConstants.thingsboardSignUpAppSecret;
    return "Null";
  }
}
