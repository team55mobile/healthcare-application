import 'package:flutter/material.dart';

import 'my_home_page.dart';
import 'actor_home_page.dart';

void main() {
  runApp(MyApp());
}

final Color colorBlue = const Color(0xFF2B6ED0);
const Color colorBlueAccent = const Color(0xFF2D80D6);
const Color colorGreen = const Color(0xFF2ECBC8);
const Color colorOrange = const Color(0xFFF9AD69);
const Color colorPink = const Color(0xFFED6694);
const Color colorWhite = const Color(0xFFFFFFFF);
const Color colorShadow = const Color(0xFFD8D8D8);

class MyApp extends StatelessWidget {
  static const MaterialColor blueSwatch = MaterialColor(
    _blueSwatchPrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD), // The lightest shade.
      100: Color(0xFFBBDEFB), // The second lightest shade.
      200: Color(0xFF90CAF9), // The third lightest shade.
      300: Color(0xFF64B5F6), // The fourth lightest shade.
      400: Color(0xFF42A5F5), // The fifth lightest shade.
      500: Color(0xFF2B6ED0), // The default shade (primary swatch).
      600: Color(0xFF1E88E5), // The fourth darkest shade.
      700: Color(0xFF1976D2), // The third darkest shade.
      800: Color(0xFF1565C0), // The second darkest shade.
      900: Color(0xFF0D47A1), // The darkest shade.
    },
  );
  static const int _blueSwatchPrimaryValue = 0xFF2B6ED0;

  static ThemeData theme = ThemeData(
    primarySwatch: blueSwatch,
    secondaryHeaderColor: colorBlueAccent,
    colorScheme: ColorScheme.light(secondary: colorOrange),
    //accentColor: colorOrange
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      title: 'Flutter Demo',
      theme: theme,
      home: ActorHomePage(title: 'Patients list'),
    );
  }
}
