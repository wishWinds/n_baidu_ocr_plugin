import 'dart:async';

import 'package:flutter/services.dart';

class NBaiduOcrPlugin {
  static const MethodChannel _channel =
      const MethodChannel('n_baidu_ocr_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
