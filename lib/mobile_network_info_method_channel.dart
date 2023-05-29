import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mobile_network_info_platform_interface.dart';

/// An implementation of [MobileNetworkInfoPlatform] that uses method channels.
class MethodChannelMobileNetworkInfo extends MobileNetworkInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mobile_network_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
