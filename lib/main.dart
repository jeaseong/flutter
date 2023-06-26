import 'package:flutter/material.dart';
import 'package:my_app/bottom/bottom_navigator.dart';
import 'package:my_app/state/screens/state_screen.dart';
import 'package:my_app/webtoon/webtoon_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: WebtoonScreen(),
      routes: {
        '/state': (context) => const StateScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('home'),
      ),
      bottomNavigationBar: BottomNavigationBarExampleApp(),
    );
  }
}




  // This widget is the root of your application.

  