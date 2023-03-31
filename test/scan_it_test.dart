import 'package:flutter_test/flutter_test.dart';
import 'package:scan_it/scan_it.dart';
import 'package:scan_it/scan_it_platform_interface.dart';
import 'package:scan_it/scan_it_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockScanItPlatform
    with MockPlatformInterfaceMixin
    implements ScanItPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ScanItPlatform initialPlatform = ScanItPlatform.instance;

  test('$MethodChannelScanIt is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelScanIt>());
  });

  test('getPlatformVersion', () async {
    ScanIt scanItPlugin = ScanIt();
    MockScanItPlatform fakePlatform = MockScanItPlatform();
    ScanItPlatform.instance = fakePlatform;

    expect(await scanItPlugin.getPlatformVersion(), '42');
  });
}
