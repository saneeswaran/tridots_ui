import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/news_card_horizontal.dart';

class HorizontalNewsSection extends StatelessWidget {
  const HorizontalNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width,
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 Top Tabs
          Row(
            children: List.generate(
              Data.topTabs.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  Data.topTabs[index],
                  style: TextStyle(
                    color: index == 0 ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// 🔹 News Cards
          Column(
            children: List.generate(Data.horizontalNews.length, (index) {
              final item = Data.horizontalNews[index];

              return NewsCardHorizontal(
                image: item.image,
                cat1: item.cat1,
                cat2: item.cat2,
                category: item.category,
                title: item.title,
                description: item.description,
              );
            }),
          ),
        ],
      ),
    );
  }
}
