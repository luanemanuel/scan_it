import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scan_it_platform_interface.dart';

/// An implementation of [ScanItPlatform] that uses method channels.
class MethodChannelScanIt extends ScanItPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scan_it');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
