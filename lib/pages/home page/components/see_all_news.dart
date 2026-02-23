import 'package:flutter/material.dart';

class SeeAllNews extends StatelessWidget {
  final String title;
  const SeeAllNews({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right, size: 14),
                iconAlignment: IconAlignment.end,
                label: const Text(
                  "See more",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 5,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
