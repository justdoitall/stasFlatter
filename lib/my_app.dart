import 'package:flutter/material.dart';
import 'package:flutter_stas/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'onetwothree',
      theme: darkTheme,
      routes: routes,
    );
  }
}