import 'package:flutter/material.dart';
import 'package:tridos_task/constants/app_images.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/widgets/ir_story_tile.dart';

class StoryItems extends StatelessWidget {
  const StoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      color: const Color(0xffFFEDEF),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(AppImages.ir),
            title: const Text(
              "IR Times",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Top 3 Stories of the day"),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('See more', style: TextStyle(fontSize: 10)),
            ),
          ),

          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: Data.stories.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final story = Data.stories[index];
                return IrStoryTile(image: story.image, title: story.title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
