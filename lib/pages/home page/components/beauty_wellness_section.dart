import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/pages/home%20page/components/see_all_news.dart';
import 'package:tridos_task/widgets/beauty_news_tile.dart';

class BeautyWellnessSection extends StatelessWidget {
  const BeautyWellnessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SeeAllNews(title: "Beauty & Wellness"),

          Column(
            children: List.generate(Data.beautyNews.length, (index) {
              final item = Data.beautyNews[index];

              return BeautyNewsTile(image: item.image, title: item.title);
            }),
          ),
        ],
      ),
    );
  }
}
