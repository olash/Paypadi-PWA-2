import 'package:package_info_plus/package_info_plus.dart';

class AppVersionService {
  Future<PackageInfo> getAppInformation() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      return packageInfo;
    } catch (e) {
      // Report to crash reporting service (e.g., Firebase Crashlytics)
      // await FirebaseCrashlytics.instance.recordError(
      //   e,
      //   stackTrace,
      //   reason: 'Failed to retrieve package info',
      //   fatal: false, // Won't be flagged as a crash in the dashboard
      // );

      return PackageInfo(
        appName: 'Unknown',
        packageName: 'Unknown',
        version: '0.0.0',
        buildNumber: '0',
      );
    }
  }
}
