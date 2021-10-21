import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './generated/l10n.dart'; //Intl plugin

import 'my_home_page.dart';
import 'actor_home_page.dart';

void main() {
  runApp(MyApp());
}

const Color colorBlue = Color(0xFF2B6ED0);
const Color colorBlueAccent = Color(0xFF2D80D6);
const Color colorGreen = Color(0xFF2ECBC8);
const Color colorOrange = Color(0xFFF9AD69);
const Color colorPink = Color(0xFFED6694);
const Color colorWhite = Color(0xFFFFFFFF);
const Color colorShadow = Color(0xFFD8D8D8);

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
  // static const int _blueSwatchPrimaryValue = 0xFF2B6ED0;
  static const int _blueSwatchPrimaryValue = 0xFF2ECBC8;

  static ThemeData theme = ThemeData(
      primarySwatch: blueSwatch,
      secondaryHeaderColor: colorBlueAccent,

      // TODO: define color scheme colors
      colorScheme: ColorScheme.fromSwatch(
          // primarySwatch: Colors.blue,
          primarySwatch: blueSwatch,
          // Color? primaryColorDark,
          // Color? accentColor,
          // Color? cardColor,
          backgroundColor: colorBlue,
          primaryColorDark: colorBlue,
          // Color? errorColor,
          brightness: Brightness.light)
      // colorScheme: ColorScheme.light(secondary: colorOrange),
      // colorScheme: ColorScheme.dark(
      //     surface: colorBlue, //header
      //     background: colorBlue,
      //     secondary: colorOrange),
      //accentColor: colorOrange
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // -------------------------------------
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      // -------------------------------------

      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',
      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // supportedLocales: const [
      //   Locale('en', ''), // English, no country code
      //   Locale('ru', 'RU'),
      // ],
      // -------------------------------------
      //title: 'Flutter Demo',
      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      // --------------------------------------
      theme: theme,
      // delegate not initialized...
      home: ActorHomePage(),
    );
  }
}
