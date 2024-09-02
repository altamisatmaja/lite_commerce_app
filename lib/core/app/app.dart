import 'package:flutter/material.dart';
import 'package:lite_commerce_app/core/core.dart';
import 'package:lite_commerce_app/features/home/presentation/screens/home_screen.dart';
import 'package:ui_common/ui_common.dart';

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lite Commerce',
          theme: LiteCommerceTheme.dark,
          home: const HomeScreen(),
        );
      },
    );
  }
}
