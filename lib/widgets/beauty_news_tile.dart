import 'package:flutter/material.dart';

class BeautyNewsTile extends StatelessWidget {
  final String image;
  final String title;

  const BeautyNewsTile({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Beauty ",
              style: TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: "●",
              style: TextStyle(color: Colors.black, fontSize: 5),
            ),
            TextSpan(
              text: " News",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(title),
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(image, width: 60, height: 60, fit: BoxFit.cover),
      ),
    );
  }
}
