import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';

class TrendingNewsData extends StatelessWidget {
  const TrendingNewsData({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55,
      width: size.width * 1,
      child: ListView.builder(
        itemCount: Data.trending.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final trend = Data.trending[index];
          return Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text(trend)),
          );
        },
      ),
    );
  }
}
