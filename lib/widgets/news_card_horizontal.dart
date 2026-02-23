import 'package:flutter/material.dart';

class NewsCardHorizontal extends StatelessWidget {
  final String image, cat1, cat2, title, description, category;
  final Color? backgroundColor;
  const NewsCardHorizontal({
    super.key,
    required this.image,
    required this.cat1,
    required this.cat2,
    required this.title,
    required this.description,
    required this.category,
    this.backgroundColor = const Color(0xffEDEDED),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Image.asset(image, height: 130, width: 140, fit: BoxFit.cover),

                // bottom left time badge
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.menu_book, size: 14, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "1 min",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          // RIGHT CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CATEGORY ROW
                Row(
                  children: [
                    Text(
                      cat1,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text("|", style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 6),
                    Text(
                      cat2,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // TITLE
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                // DESCRIPTION
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 8),

                // HASHTAG
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
