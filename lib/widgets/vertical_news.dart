import 'package:flutter/material.dart';

class VerticalNews extends StatelessWidget {
  final String assetName;
  final String title;
  final String description;
  final String hashTags;

  const VerticalNews({
    super.key,
    required this.assetName,
    required this.title,
    required this.description,
    required this.hashTags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                assetName,
                height: 95,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 14),

            // Text Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.redAccent,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Description
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Hashtags
                  Text(
                    hashTags,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
