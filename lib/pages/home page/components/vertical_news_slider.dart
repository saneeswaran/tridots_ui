import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/vertical_news.dart';

class VerticalNewsSlider extends StatelessWidget {
  const VerticalNewsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: Data.verticalNews.length,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final news = Data.verticalNews[index];
          return VerticalNews(
            assetName: news.imagePath,
            title: news.title,
            description: news.description,
            hashTags: news.category,
          );
        },
      ),
    );
  }
}
