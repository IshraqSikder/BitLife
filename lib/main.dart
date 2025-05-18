import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'views/bitLifeScreen.dart';

void main() {
  debugPaintSizeEnabled = false; // Debug paint size
  runApp(const BitLifeApp());
}

class BitLifeApp extends StatelessWidget {
  const BitLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BitLifeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}