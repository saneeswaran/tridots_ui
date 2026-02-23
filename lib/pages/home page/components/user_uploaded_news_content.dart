import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/profile_image_content.dart';

class UserUploadedNewsContent extends StatelessWidget {
  const UserUploadedNewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Data.leaderData.length,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          final item = Data.leaderData[index];
          return SizedBox(
            width: size.width * 0.7,
            child: ProfileImageContent(
              imagePath: item["image"],
              avatar: item["avatar"],
              title: item["title"],
              description: item["description"],
              name: item["name"],
            ),
          );
        },
      ),
    );
  }
}
