import 'package:flutter/material.dart';

class CustomHorizontalPost extends StatelessWidget {
  final String imagePath, title, description;
  final bool showHashTags;
  final String? hashTags;
  final Color? titleColor;
  final int? titleMaxLines;
  final Color? descColor;
  final FontWeight titleWeight;
  const CustomHorizontalPost({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.showHashTags = false,
    this.hashTags,
    this.titleColor = Colors.red,
    this.descColor = Colors.black,
    this.titleMaxLines = 2,
    this.titleWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(12),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),

      child: Row(
        children: [
          SizedBox(
            height: size.height * 0.2,
            width: size.width * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: titleMaxLines,
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: titleWeight, color: descColor),
                ),
                Visibility(
                  visible: showHashTags,
                  child: Text(
                    hashTags ?? "",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
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
