import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easy_image_take/easy_image_take.dart';

void main() {
  const MethodChannel channel = MethodChannel('easy_image_take');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EasyImageTake.platformVersion, '42');
  });
}
