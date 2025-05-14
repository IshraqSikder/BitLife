import 'package:flutter/material.dart';

Widget IconColumn(IconData icon, String label, Color color) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: color,
        child: Icon(icon, color: Colors.white),
      ),
      const SizedBox(height: 5),
      Text(label, style: const TextStyle(color: Colors.white)),
    ],
  );
}
