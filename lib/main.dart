import 'package:edumate/pages/home.dart';
import 'package:edumate/pages/huj.dart';
import 'package:flutter/material.dart';

const _fontFamily = 'SF Pro Text'; // dodaj do pubspec.yaml i assets/fonts

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF007AFF), // Primary
    onPrimary: Color(0xFFFFFFFF), // Tekst na Primary
    secondary: Color(0xFFD7D7D7), // Body - Secondary
    onSecondary: Color(0xFF131313), // Założyłem czarny tekst
    error: Color(0xFFD53F36), // Error
    onError: Color(0xFFFFFFFF), // Tekst na Error
    background: Color(0xFFFFFFFF), // Bg
    onBackground: Color(0xFF131313), // Body - Primary
    surface: Color(0xFFF8F8F8), // Surfaces - szary
    onSurface: Color(0xFF131313), // Tekst na surface
  ),
  scaffoldBackgroundColor: Color(0xFFFFFFFF), // BG
  dividerColor: Color(0xFFF2F2F2), // Border & Divider
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF007AFF), // Primary
    onPrimary: Color(0xFFFFFFFF), // Tekst na Primary
    secondary: Color(0xFF4C4C4C), // Body - Secondary
    onSecondary: Color(0xFFFFFFFF), // Tekst na Secondary
    error: Color(0xFFD53F36), // Error
    onError: Color(0xFFFFFFFF), // Tekst na Error
    surface: Color(0xFF262626), // Surface główny (ciemny)
    onSurface: Color(0xFFFFFFFF), // Tekst na Surface
  ),
  scaffoldBackgroundColor: Color(0xFF131313), // BG - tło aplikacji
  dividerColor: Color(0xFF393939), // Border & Divider
);

final TextTheme customTextTheme = TextTheme(
  // Headliney
  displayLarge: TextStyle(
    fontSize: 40,
    height: 48 / 40,
    letterSpacing: -0.3,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 32,
    height: 40 / 32,
    letterSpacing: -0.3,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: -0.3,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
  ),

  // Title
  titleLarge: TextStyle(
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: -0.3,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 20,
    height: 24 / 20,
    letterSpacing: -0.3,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 18,
    height: 24 / 18,
    letterSpacing: -0.3,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
  ),

  // Label
  labelLarge: TextStyle(
    fontSize: 20,
    height: 24 / 20,
    letterSpacing: -0.4,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 16,
    height: 20 / 16,
    letterSpacing: -0.4,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
  ),
  labelSmall: TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: -0.4,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
  ),

  // Body
  bodyLarge: TextStyle(
    fontSize: 20,
    height: 24 / 20,
    letterSpacing: -0.3,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    height: 20 / 16,
    letterSpacing: -0.3,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: -0.3,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edumate',
      darkTheme: darkTheme.copyWith(
        // primarySwatch: Colors.blue,
        textTheme: customTextTheme,
        // useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      theme: lightTheme.copyWith(
        // primarySwatch: Colors.blue,
        textTheme: customTextTheme,
        // useMaterial3: true,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/signin': (context) => LoginPage(),
        '/signup': (context) => const Text("sdbgd"),
      },
      // home: const HomePage(),
    );
  }
}
