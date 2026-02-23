import 'package:flutter/material.dart';

class BulletNewsTile extends StatelessWidget {
  final String title;

  const BulletNewsTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.circle_outlined, color: Colors.red, size: 12),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
