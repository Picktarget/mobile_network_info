
import 'mobile_network_info_platform_interface.dart';

class MobileNetworkInfo {
  Future<String?> getPlatformVersion() {
    return MobileNetworkInfoPlatform.instance.getPlatformVersion();
  }
}
