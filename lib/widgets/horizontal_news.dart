import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/custom_horizontal_post.dart';

class HorizontalNews extends StatelessWidget {
  const HorizontalNews({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.16,
      width: size.width * 1,
      child: ListView.builder(
        itemCount: Data.postData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final post = Data.postData[index];
          return CustomHorizontalPost(
            imagePath: post.imagePath,
            title: post.title,
            description: post.description,
          );
        },
      ),
    );
  }
}
