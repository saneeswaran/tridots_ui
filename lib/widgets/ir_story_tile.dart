import 'package:flutter/material.dart';

class IrStoryTile extends StatelessWidget {
  final String image;
  final String title;

  const IrStoryTile({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: size.height * 0.1,
          width: size.width * 0.3,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),
      ],
    );
  }
}
