
import 'dart:async';

import 'package:flutter/services.dart';

class A920Android {
  static const MethodChannel _channel =
      const MethodChannel('a920_android');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
