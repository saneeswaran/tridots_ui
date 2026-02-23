import 'package:flutter/material.dart';

class CustomBorderPosts extends StatelessWidget {
  final String imagePath;
  final String description;
  final String category;

  const CustomBorderPosts({
    super.key,
    required this.imagePath,
    required this.description,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      width: size.width * 0.8,
      margin: const EdgeInsets.all(12),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.2,
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  // Image
                  Positioned.fill(
                    child: Image.asset(imagePath, fit: BoxFit.cover),
                  ),

                  // Category text on image
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            description,
            style: const TextStyle(color: Color(0xff383838), fontSize: 17),
          ),
        ],
      ),
    );
  }
}
