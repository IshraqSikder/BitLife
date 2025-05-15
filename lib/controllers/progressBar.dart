import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ProgressBar(String label, IconData icon, Color iconColor, double value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 75,
          child: Text(
            label,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF00569D),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Icon(icon, color: iconColor),
        // const SizedBox(width: 5),
        Stack(
          children: [
            Container(
              width: 175,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
            ),
            Container(
              width: 175 * value,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                '${(value * 100).toInt()}%',
                style: const TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
