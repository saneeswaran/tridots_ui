import 'package:flutter/material.dart';

class PictureNewsTile extends StatelessWidget {
  final String image;
  final String title;

  const PictureNewsTile({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(image, width: 60, height: 60, fit: BoxFit.cover),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
