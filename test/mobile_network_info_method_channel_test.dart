import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_network_info/mobile_network_info_method_channel.dart';

void main() {
  MethodChannelMobileNetworkInfo platform = MethodChannelMobileNetworkInfo();
  const MethodChannel channel = MethodChannel('mobile_network_info');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
