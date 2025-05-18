import 'package:flutter/material.dart';
import '../controllers/snackBarMessage.dart';

class IconColumn extends StatelessWidget {
  final BuildContext context;
  final IconData icon;
  final String label;
  final Color color;

  const IconColumn({
    super.key,
    required this.context,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => SnackBarMessage(
              context, '$label Button is Clicked', Colors.black),
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
}
