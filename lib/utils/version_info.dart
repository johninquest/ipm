import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class VersionInfo extends StatefulWidget {
  const VersionInfo({super.key});

  @override
  State<VersionInfo> createState() => _VersionInfoState();
}

class _VersionInfoState extends State<VersionInfo> {
  final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<PackageInfo>(
            future: _packageInfo,
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              if (snapshot.hasError) {
                return const Text('ERROR');
              } else if (!snapshot.hasData) {
                return const Text('Loading...');
              }

              final data = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('App Name: ${data.appName}'),
                  Text('Package Name: ${data.packageName}'),
                  Text('Version: ${data.version}'),
                  Text('Build Number: ${data.buildNumber}'),
                ],
              );
            }));
  }
}

class AppVersionInfo extends StatefulWidget {
  const AppVersionInfo({super.key});

  @override
  State<AppVersionInfo> createState() => _AppVersionInfoState();
}

class _AppVersionInfoState extends State<AppVersionInfo> {
  final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<PackageInfo>(
            future: _packageInfo,
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              if (snapshot.hasError) {
                return const Text('ERROR');
              } else if (!snapshot.hasData) {
                return const Text('Loading...');
              }

              final data = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* Text('App Name: ${data.appName}'),
                  Text('Package Name: ${data.packageName}'), */
                  Text(
                    'v${data.version}',
                    style: const TextStyle(
                        fontSize: 8.0, fontWeight: FontWeight.bold),
                  ),
                  /*  Text('Build Number: ${data.buildNumber}'), */
                ],
              );
            }));
  }
}
