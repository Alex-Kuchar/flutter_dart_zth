import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativdesign/presentation/login/login.dart';
import 'package:nativdesign/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      debugShowCheckedModeBanner: false,
      title: "Native Design",
      home: const LoginPage(),
      material: (_, __) => MaterialAppData(theme: materialThemeData),
      cupertino: (_, __) => CupertinoAppData(theme: cupertinoTheme),
    );
  }
}
