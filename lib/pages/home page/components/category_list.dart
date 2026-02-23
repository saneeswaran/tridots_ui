import 'package:flutter/material.dart';
import 'package:tridos_task/data/data.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Data.categoryData.length,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final cat = Data.categoryData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(cat, style: const TextStyle(color: Color(0xff595959))),
                const Text("    •", style: TextStyle(color: Colors.red)),
              ],
            ),
          );
        },
      ),
    );
  }
}
