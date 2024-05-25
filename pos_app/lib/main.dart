import 'package:flutter/material.dart';
import 'package:pos_app/src/state/products_scope.dart';
import 'package:pos_app/src/view/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProductsScope(
      child: MaterialApp(
        home: const MainScreen(),
        theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
    );
  }
}
