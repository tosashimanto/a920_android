import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:a920_android/a920_android.dart';

void main() {
  const MethodChannel channel = MethodChannel('a920_android');

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
    expect(await A920Android.platformVersion, '42');
  });
}
