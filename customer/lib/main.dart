import 'package:customer_side_web/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coffee Beer Cafe",
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
