import 'package:flutter/material.dart';
import 'package:tridos_task/constants/app_images.dart';
import 'package:tridos_task/data/data.dart';
import 'package:tridos_task/pages/home%20page/components/beauty_wellness_section.dart';
import 'package:tridos_task/pages/home%20page/components/category_list.dart';
import 'package:tridos_task/pages/home%20page/components/food_and_beverage.dart';
import 'package:tridos_task/pages/home%20page/components/head_news.dart';
import 'package:tridos_task/pages/home%20page/components/home_app_bar.dart';
import 'package:tridos_task/pages/home%20page/components/latest_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/news_name.dart';
import 'package:tridos_task/pages/home%20page/components/research_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/see_all_news.dart';
import 'package:tridos_task/pages/home%20page/components/story_items.dart';
import 'package:tridos_task/pages/home%20page/components/text_news.dart';
import 'package:tridos_task/pages/home%20page/components/trending_news_data.dart';
import 'package:tridos_task/pages/home%20page/components/user_uploaded_news_content.dart';
import 'package:tridos_task/pages/home%20page/components/vertical_image.dart';
import 'package:tridos_task/pages/home%20page/components/vertical_news_slider.dart';
import 'package:tridos_task/pages/home%20page/components/video_news_data.dart';
import 'package:tridos_task/widgets/custom_border_posts.dart';
import 'package:tridos_task/widgets/custom_horizontal_post.dart';
import 'package:tridos_task/widgets/horizontal_news.dart';
import 'package:tridos_task/widgets/news_card_horizontal.dart';
import 'package:tridos_task/widgets/profile_image_content.dart';
import 'package:tridos_task/widgets/vertical_news.dart';

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

            Container(
              padding: const EdgeInsets.all(8.0),
              width: size.width * 1,
              color: Colors.grey.shade200,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "E-commerce",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "People",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "D2C",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  NewsCardHorizontal(
                    image: AppImages.t1,
                    cat1: "Fashion",
                    cat2: "Food",
                    category: "#Fashion",
                    title: "What makes Fila unique is its attitude and...",
                    description:
                        "The singer-songwriter has been spotted in the hybrid garment...",
                  ),
                  NewsCardHorizontal(
                    image: AppImages.t2,
                    cat1: "Shailesh",
                    cat2: "Fashion",
                    category: "#Fashion",
                    title:
                        "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
                    description:
                        "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
                  ),
                  NewsCardHorizontal(
                    image: AppImages.t3,
                    cat1: "Fashion",
                    cat2: "Food",
                    category: "#Fashion",
                    title:
                        "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
                    description:
                        "The Gucci loafer has been a signature style for 70 years.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            const SeeAllNews(title: "Shopping Centers"),
            const SizedBox(height: 10),
            const NewsCardHorizontal(
              backgroundColor: Colors.white,
              image: AppImages.s1,
              cat1: "Select Citywalk",
              cat2: "Lifestyle",
              category: "#Fashion",
              title: "Select Citywalk opens 4 new stores in June",
              description:
                  "The new stores opened at Select Citywalk include Choko la, Raymond",
            ),
            const NewsCardHorizontal(
              backgroundColor: Colors.white,
              image: AppImages.s2,
              cat1: "Infiniti Mall",
              cat2: "news",
              category: "#Fashion",
              title:
                  "Infiniti Mall collaborates with  T-Series & PVR Inox to unveil.. ",
              description:
                  "Constructed by Rubik’s Cubes mosaic artist Selwyn Santmajor",
            ),
            const NewsCardHorizontal(
              backgroundColor: Colors.white,
              image: AppImages.s3,
              cat1: "Multimedia",
              cat2: "news",
              category: "#Fashion",
              title:
                  "DLF creating new retail space in Delhi for France’s Galeries..",
              description:
                  "DLF is earmarking space for the luxury retailer between two of its top-end",
            ),
            const SeeAllNews(title: "Privilege Members Corner"),
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 1,
              child: ListView.builder(
                itemCount: Data.postData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final post = Data.fooData[index];
                  return CustomBorderPosts(
                    imagePath: post.imagePath,
                    category: post.category,
                    description: post.description,
                  );
                },
              ),
            ),
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
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImages.p1),
              ),
              title: const Text(
                "Simplifying Retai Industry Compliance Management",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImages.p2),
              ),
              title: const Text(
                "ABFRL’s ethnic wear brand Jaypore enters Hyderabad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImages.p3),
              ),
              title: const Text(
                "Mensa Brands brings home décor brand Folkulture to India",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: size.width * 1,
              color: Colors.white,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "E-commerce",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "People",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "D2C",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  NewsCardHorizontal(
                    backgroundColor: Colors.white,
                    image: AppImages.so1,
                    cat1: "Lifestyle  ",
                    cat2: "Fashion",
                    category: "#Fashion",
                    title: "Ecom Express appoints Ajay Chitkara",
                    description: "Chitkara, who is at present serving as...",
                  ),
                  NewsCardHorizontal(
                    backgroundColor: Colors.white,
                    image: AppImages.so2,
                    cat1: "Lifestyle  ",
                    cat2: "Fashion",
                    category: "#Fashion",
                    title: "DTDC sets up super hub",
                    description: "Spread over 1,75,000 square feet of space",
                  ),
                  NewsCardHorizontal(
                    backgroundColor: Colors.white,
                    image: AppImages.so3,
                    cat1: "Lifestyle  ",
                    cat2: "Fashion",
                    category: "#Fashion",
                    title: "KSH Distriparks bolsters its fleet",
                    description: "With the addition of new vehicles, the...",
                  ),
                ],
              ),
            ),

            const SeeAllNews(title: "Case Studies"),
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 1,
              child: ListView.builder(
                itemCount: Data.voData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final post = Data.voData[index];
                  return CustomBorderPosts(
                    imagePath: post.imagePath,
                    category: post.category,
                    description: post.description,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
