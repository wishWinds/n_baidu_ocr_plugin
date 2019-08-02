import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:n_baidu_ocr_plugin/n_baidu_ocr_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('n_baidu_ocr_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NBaiduOcrPlugin.platformVersion, '42');
  });
}
