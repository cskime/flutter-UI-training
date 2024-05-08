import 'package:flutter/material.dart';
import 'package:pos_app/src/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            // selectedItemColor: Palette.primary,
            // selectedLabelStyle: TextStyle(fontSize: 12, color: Palette.primary),
            // unselectedItemColor: Palette.grey,
            // unselectedLabelStyle: TextStyle(fontSize: 12, color: Palette.grey),
            // backgroundColor: Colors.white,
            ),
      ),
    );
  }
}
