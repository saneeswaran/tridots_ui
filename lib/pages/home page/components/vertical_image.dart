import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/vertical_news.dart';

class VerticalImage extends StatelessWidget {
  const VerticalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.vData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = Data.vData[index];

        return VerticalNews(
          assetName: item.imagePath,
          title: item.title,
          description: item.description,
          hashTags: item.category,
        );
      },
    );
  }
}
