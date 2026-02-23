import 'package:flutter/material.dart';

class ProfileImageContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String avatar;
  final String name;

  const ProfileImageContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 10),

          // Profile Row
          Row(
            children: [
              CircleAvatar(radius: 18, backgroundImage: AssetImage(avatar)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 5),

          Text(name, style: const TextStyle(fontSize: 13, color: Colors.grey)),
        ],
      ),
    );
  }
}
