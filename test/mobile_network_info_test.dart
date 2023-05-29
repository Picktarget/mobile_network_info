import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_network_info/mobile_network_info.dart';
import 'package:mobile_network_info/mobile_network_info_platform_interface.dart';
import 'package:mobile_network_info/mobile_network_info_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMobileNetworkInfoPlatform
    with MockPlatformInterfaceMixin
    implements MobileNetworkInfoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MobileNetworkInfoPlatform initialPlatform = MobileNetworkInfoPlatform.instance;

  test('$MethodChannelMobileNetworkInfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMobileNetworkInfo>());
  });

  test('getPlatformVersion', () async {
    MobileNetworkInfo mobileNetworkInfoPlugin = MobileNetworkInfo();
    MockMobileNetworkInfoPlatform fakePlatform = MockMobileNetworkInfoPlatform();
    MobileNetworkInfoPlatform.instance = fakePlatform;

    expect(await mobileNetworkInfoPlugin.getPlatformVersion(), '42');
  });
}
