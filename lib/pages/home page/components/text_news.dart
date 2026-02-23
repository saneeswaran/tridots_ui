import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/bullet_news_tile.dart';

class TextNews extends StatelessWidget {
  const TextNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: Data.headlines.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return BulletNewsTile(title: Data.headlines[index]);
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Divider(color: Colors.grey.shade300, thickness: 1),
        );
      },
    );
  }
}
