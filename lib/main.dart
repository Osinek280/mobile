import 'package:flutter/material.dart';

const _fontFamily = 'SF Pro Text'; // dodaj do pubspec.yaml i assets/fonts

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF007AFF),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFFD7D7D7),
    onSecondary: Color(0xFF131313),
    error: Color(0xFFD9534F),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFF6F6F6),
    onSurface: Color(0xFF131313), // dawny onBackground
  ),
  scaffoldBackgroundColor: Color(0xFFFFFFFF), // Bg
  dividerColor: Color(0xFFF2F2F2),
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF007AFF),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF4C4C4C),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFD9534F),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFF00254D),
    onSurface: Color(0xFFFFFFFF), // dawny onBackground
  ),
  scaffoldBackgroundColor: Color(0xFF131313), // Bg
  dividerColor: Color(0xFF393939),
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
      themeMode: ThemeMode.light,
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
      home: const LanguageLearningScreen(),
    );
  }
}

class LanguageLearningScreen extends StatelessWidget {
  const LanguageLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Speaker.',
                style: textTheme.displaySmall?.copyWith(
                  color: Colors.black,
                ), // 24/32 headlineSmall
              ),
              const SizedBox(height: 40),
              Center(child: Image.asset('assets/home-light2.png')),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Learn english in 30 minute a day',
                      style: textTheme.displayMedium?.copyWith(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Let's start studying!",
                      style: textTheme.titleSmall?.copyWith(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: 360,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to learning screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Start learning',
                    style: textTheme.labelLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: textTheme.bodySmall?.copyWith(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: dodaj nawigację do ekranu logowania
                    },
                    child: Text(
                      'Log in',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
