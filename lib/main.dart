import 'package:flutter/material.dart';
import 'package:lite_commerce_app/core/app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SmartHomeApp();
  }
}
