import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scan_it_method_channel.dart';

abstract class ScanItPlatform extends PlatformInterface {
  /// Constructs a ScanItPlatform.
  ScanItPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScanItPlatform _instance = MethodChannelScanIt();

  /// The default instance of [ScanItPlatform] to use.
  ///
  /// Defaults to [MethodChannelScanIt].
  static ScanItPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScanItPlatform] when
  /// they register themselves.
  static set instance(ScanItPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
