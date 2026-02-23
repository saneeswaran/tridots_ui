import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/custom_horizontal_post.dart';

class ResearchNews extends StatelessWidget {
  const ResearchNews({super.key});

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
          final post = Data.rData[index];
          return CustomHorizontalPost(
            titleColor: Colors.black,
            descColor: Colors.red,
            titleWeight: FontWeight.bold,
            imagePath: post.imagePath,
            title: post.title,
            description: post.description,
          );
        },
      ),
    );
  }
}
