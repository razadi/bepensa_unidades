import 'package:bepensa_unidades/utils/utils.dart';
import 'package:flutter/material.dart';

class BmTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: false,
        fontFamily: 'Roboto',
        primaryColor: BmColors.colorPrimaryInterfaz,
        primaryColorLight: BmColors.colorPrimaryInterfaz,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          labelSmall: TextStyle(
              fontSize: 16,
              color: BmColors.colorTertiaryBody,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.51),
          bodySmall: TextStyle(
              fontSize: 14,
              color: BmColors.colorComplementary2,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.48),
          displaySmall: TextStyle(
              fontSize: 16,
              color: BmColors.colorWhite,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.51),
        ),
        appBarTheme: const AppBarTheme(
            color: BmColors.colorComplementary2,
            foregroundColor: BmColors.colorWhite),
        colorScheme: const ColorScheme.light(
          onPrimary: BmColors.colorPrimaryInterfaz,
          primary: BmColors.colorPrimaryInterfaz,
          secondary: BmColors.colorComplementary,
          onSecondary: BmColors.colorComplementary,
        ),
      );
}
