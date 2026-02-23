import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/news_card_horizontal.dart';

class SimpleHorizontalNews extends StatelessWidget {
  const SimpleHorizontalNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.smallHorizontalNews.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = Data.smallHorizontalNews[index];

        return NewsCardHorizontal(
          backgroundColor: Colors.white,
          image: item.image,
          cat1: item.cat1,
          cat2: item.cat2,
          category: item.category,
          title: item.title,
          description: item.description,
        );
      },
    );
  }
}
