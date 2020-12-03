
import 'dart:async';

import 'package:flutter/services.dart';

class EasyImageTake {
  static const MethodChannel _channel =
      const MethodChannel('easy_image_take');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
