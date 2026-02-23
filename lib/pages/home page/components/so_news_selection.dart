import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/news_card_horizontal.dart';

class SoNewsSection extends StatelessWidget {
  const SoNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              Data.soTabs.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  Data.soTabs[index],
                  style: TextStyle(
                    color: index == 0 ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Column(
            children: List.generate(Data.soNews.length, (index) {
              final item = Data.soNews[index];
              return NewsCardHorizontal(
                backgroundColor: Colors.white,
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
