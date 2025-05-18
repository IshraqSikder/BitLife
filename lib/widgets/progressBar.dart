import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconColor;
  final double value;

  const ProgressBar({
    super.key,
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
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
          Stack(
            children: [
              Container(
                width: 175,
                height: 20,
                decoration: BoxDecoration(color: Colors.grey.shade300),
              ),
              Container(
                width: 175 * value,
                height: 20,
                decoration: const BoxDecoration(color: Colors.green),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  '${(value * 100).toInt()}%',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
