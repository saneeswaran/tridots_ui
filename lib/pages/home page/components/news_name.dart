import 'package:flutter/material.dart';

class NameNews extends StatelessWidget {
  final String title;
  final String subtitle;

  const NameNews({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Divider(color: Colors.grey.shade300, thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            subtitle,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.grey.shade300, thickness: 1),
        ),
      ],
    );
  }
}
