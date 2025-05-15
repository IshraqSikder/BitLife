import 'package:bitlife/controllers/snackBarMessage.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
IconColumn(BuildContext context, IconData icon, String label, Color color) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          SnackBarMessage(context, '$label Button is Clicked', Colors.black);
        },
        child: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
      ),
      const SizedBox(height: 5),
      Text(label, style: const TextStyle(color: Colors.white, fontSize: 9)),
    ],
  );
}
