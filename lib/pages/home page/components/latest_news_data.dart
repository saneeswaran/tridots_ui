import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/custom_border_posts.dart';

class LatestNewsData extends StatelessWidget {
  const LatestNewsData({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: size.width * 1,
      child: ListView.builder(
        itemCount: Data.postData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final post = Data.latestNews[index];
          return CustomBorderPosts(
            imagePath: post.imagePath,
            category: post.category,
            description: post.description,
          );
        },
      ),
    );
  }
}
