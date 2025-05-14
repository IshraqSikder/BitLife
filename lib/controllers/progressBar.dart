import 'package:flutter/material.dart';

Widget ProgressBar(String label, IconData icon, Color iconColor, double value) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF00569D),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 15),
        Icon(icon, color: iconColor),
        const SizedBox(width: 15),
        Stack(
          children: [
            Container(
              width: 200,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
            ),
            Container(
              width: 200 * value,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Text('${(value * 100).toInt()}%'),
      ],
    ),
  );
}
