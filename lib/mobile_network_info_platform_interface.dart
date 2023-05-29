import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mobile_network_info_method_channel.dart';

abstract class MobileNetworkInfoPlatform extends PlatformInterface {
  /// Constructs a MobileNetworkInfoPlatform.
  MobileNetworkInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static MobileNetworkInfoPlatform _instance = MethodChannelMobileNetworkInfo();

  /// The default instance of [MobileNetworkInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelMobileNetworkInfo].
  static MobileNetworkInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MobileNetworkInfoPlatform] when
  /// they register themselves.
  static set instance(MobileNetworkInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
