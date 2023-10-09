import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ThingsboardAppConstants {
  static final thingsBoardApiEndpoint = dotenv.env['THINGSBOARD_ENDPOINT']!;
  static final thingsboardOAuth2CallbackUrlScheme =
      dotenv.env['THINGSBOARD_OAUTH_2_CALLBACK_URL_SCHEME']!;
}
