import 'package:flutter/material.dart';
import 'package:tridos_task/constants/app_images.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/pages/home%20page/components/beauty_wellness_section.dart';
import 'package:tridos_task/pages/home%20page/components/category_list.dart';
import 'package:tridos_task/pages/home%20page/components/food_and_beverage.dart';
import 'package:tridos_task/pages/home%20page/components/head_news.dart';
import 'package:tridos_task/pages/home%20page/components/home_app_bar.dart';
import 'package:tridos_task/pages/home%20page/components/latest_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/member_center.dart';
import 'package:tridos_task/pages/home%20page/components/news_name.dart';
import 'package:tridos_task/pages/home%20page/components/research_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/see_all_news.dart';
import 'package:tridos_task/pages/home%20page/components/simple_horizontal_news.dart';
import 'package:tridos_task/pages/home%20page/components/so_news_selection.dart';
import 'package:tridos_task/pages/home%20page/components/story_items.dart';
import 'package:tridos_task/pages/home%20page/components/text_news.dart';
import 'package:tridos_task/pages/home%20page/components/trending_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/user_uploaded_news_content.dart';
import 'package:tridos_task/pages/home%20page/components/vertical_image.dart';
import 'package:tridos_task/pages/home%20page/components/vertical_news_slider.dart';
import 'package:tridos_task/pages/home%20page/components/video_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/vo_data.dart';
import 'package:tridos_task/widgets/horizontal_news.dart';
import 'package:tridos_task/widgets/picture_news_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            const CategoryList(),
            const HorizontalNews(),
            const SizedBox(height: 10),
            const HeadNews(image: AppImages.raghul),

            const VerticalNewsSlider(),

            const SeeAllNews(title: "Latest News"),

            const LatestNewsData(),
            ListView.builder(
              itemCount: Data.newsList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = Data.newsList[index];
                return NameNews(title: item.title, subtitle: item.subtitle);
              },
            ),
            const Center(child: Text("- Advertisement -")),
            Center(
              child: SizedBox(
                height: size.height * 0.15,
                width: size.width * 0.8,
                child: Image.asset(AppImages.ad),
              ),
            ),

            const StoryItems(),

            const SeeAllNews(title: "Web Serials"),
            const HeadNews(image: AppImages.web),

            const TextNews(),
            const VideoNewsData(),
            const SeeAllNews(title: "Trending"),

            const TrendingNewsData(),
            const SeeAllNews(title: "Leaders Ink"),
            const SizedBox(height: 20),
            const UserUploadedNewsContent(),

            const SeeAllNews(title: "Research"),

            const ResearchNews(),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height * 0.35,
              width: size.width * 1,
              child: Image.asset(AppImages.video, fit: BoxFit.cover),
            ),
            const Center(child: Text("- Advertisement -")),
            Center(
              child: SizedBox(
                height: size.height * 0.15,
                width: size.width * 0.8,
                child: Image.asset(AppImages.watch),
              ),
            ),
            const SeeAllNews(title: "Fashion & Lifestyle"),
            const VerticalImage(),

            const BeautyWellnessSection(),

            const SeeAllNews(title: "Food & Beverage"),

            const FoodAndBeaverage(),

            const SizedBox(height: 10),
            const SeeAllNews(title: "Shopping Centers"),
            const SizedBox(height: 10),
            const SimpleHorizontalNews(),
            const SeeAllNews(title: "Privilege Members Corner"),
            const MemberCenter(),
            const Center(child: Text("- Advertisement -")),
            Center(
              child: SizedBox(
                height: size.height * 0.15,
                width: size.width * 0.8,
                child: Image.asset(AppImages.car),
              ),
            ),

            const SeeAllNews(title: "Podcast"),
            const SizedBox(height: 10),
            Column(
              children: List.generate(Data.pictureNews.length, (index) {
                final item = Data.pictureNews[index];

                return Column(
                  children: [
                    PictureNewsTile(image: item.image, title: item.title),
                    if (index != Data.pictureNews.length - 1)
                      const SizedBox(height: 10),
                  ],
                );
              }),
            ),
            const SoNewsSection(),

            const SeeAllNews(title: "Case Studies"),
            const VoData(),
          ],
        ),
      ),
    );
  }
}
