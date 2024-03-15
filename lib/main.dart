import 'package:flutter/material.dart';
import 'package:fweb/reponsive/desktop_scaffold.dart';
import 'package:fweb/reponsive/mobile_scaffold.dart';
import 'package:fweb/reponsive/responsive_layout.dart';
import 'package:fweb/reponsive/tablet_scaffold.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold());
  }
}
