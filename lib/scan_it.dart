
import 'scan_it_platform_interface.dart';

class ScanIt {
  Future<String?> getPlatformVersion() {
    return ScanItPlatform.instance.getPlatformVersion();
  }
}
