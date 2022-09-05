import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get mode {
    if (kReleaseMode) {
      return '.env.production';
    } else {
      return '.env.development';
    }
  }

  static String get apiUrl {
    print("API_URL == ${dotenv.env['API_URL'] ?? 'not found'}");
    return dotenv.env['API_URL'] ?? 'API url not found';
  }

  static String get xAuthKey {
    print("xAuthKey == ${dotenv.env['X-Api-Key'] ?? 'not found'}");
    return dotenv.env['X-Api-Key'] ?? 'key not fount';
  }
}
