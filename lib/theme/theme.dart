import 'package:flutter/material.dart';

final darkTheme = ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
       scaffoldBackgroundColor: Colors.black,
       dividerColor: Colors.white10,
       appBarTheme: const AppBarTheme(
        backgroundColor: Colors.yellow,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        )
       ),
       listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
           labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
           ),
        ),
      );