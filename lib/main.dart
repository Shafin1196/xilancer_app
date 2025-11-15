import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xilancer_app/screens/home_screen.dart';

void main() {
  runApp(
    // DevicePreview(
    // enabled: !kReleaseMode,
    // builder: (context) =>ProviderScope(child: XilanserApp())
    // )
    ProviderScope(child: XilanserApp())
    );
}
class XilanserApp extends StatelessWidget {
  const XilanserApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}
