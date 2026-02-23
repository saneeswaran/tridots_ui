import 'package:tridos_task/constants/app_images.dart';
import 'package:tridos_task/model/beauty_news_model.dart';
import 'package:tridos_task/model/horizontal_news_model.dart';
import 'package:tridos_task/model/news_item.dart';
import 'package:tridos_task/model/picture_news_model.dart';
import 'package:tridos_task/model/post_model.dart';
import 'package:tridos_task/model/selection_news_model.dart';
import 'package:tridos_task/model/story_item.dart';
import 'package:tridos_task/pages/home%20page/components/simple_horizontal_news_model.dart';

class Data {
  static const List<String> categoryData = [
    "Fashion & Lifestyle",
    "Beauty & Wellness",
    "Food & Beverage",
    "Travel & Adventure",
    "Education & Learning",
    "Automotive & Industrial",
    "Electronics & Gadgets",
  ];

  static final List<PostModel> postData = [
    PostModel(
      imagePath: AppImages.latest1,
      title: "HOTSPOTS",
      description: "Luxury hotspots: 5 most expensive high streets in the..",
      category: "",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.latest2,
      title: "HOTSPOTS",
      description: "Luxury hotspots: 5 most expensive high streets in the..",
      category: "",
      postedBy: "",
    ),
  ];
  static final List<PostModel> voData = [
    PostModel(
      imagePath: AppImages.vo1,
      title: "",
      description: "Wow! Momo Foods enters Bhopal with Wow! Momo, Wow China",
      category: "",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.vo2,
      title: "HOTSPOTS",
      description: "‘Simplifying Compliance Management for the Retail...",
      category: "",
      postedBy: "",
    ),
  ];

  static final List<PostModel> verticalNews = [
    PostModel(
      imagePath: AppImages.cat1,
      title: "Select Citywalk",
      description: "Wow! Momo Foods enters Bhopal with Wow! ",
      category: "# Beverage, #reel stories podcast",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.cat2,
      title: "Food & Beverage",
      description:
          "KFC opens another outlet in Punjab KFC opens another outlet in Punjab",
      category: "# Beverage, #reel stories podcast",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.cat3,
      title: "Select Citywalk",
      description: "FNP (Ferns N Petals) appoints Ashish Goel",
      category: "# Citywalk, #reel stories podcast",
      postedBy: "",
    ),
  ];

  static final List<PostModel> vData = [
    PostModel(
      imagePath: AppImages.v1,
      title: "Fashion ",
      description: "What makes Fila unique is its attitude and...",
      category: "#Fashion",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.v2,
      title: "Shailesh",
      description:
          "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      category: "#Fashion",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.v3,
      title: "Lifestyle",
      description:
          "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      category: "#Fashion",
      postedBy: "",
    ),
  ];

  static final List<PostModel> latestNews = [
    PostModel(
      imagePath: AppImages.lat1,
      title: "HOTSPOTS",
      description: "Unwrapping the Archies’ reinvention plan",
      category: "",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.lat2,
      title: "HOTSPOTS",
      description: "How AI is enhancing stores, How AI is enhancing stores",
      category: "",
      postedBy: "",
    ),
  ];
  static final List<PostModel> fData = [
    PostModel(
      imagePath: AppImages.f1,
      title: "HOTSPOTS",
      description:
          "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      category: "",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.f2,
      title: "HOTSPOTS",
      description:
          "DLF creating new retail space in Delhi for France’s Galeries Lafayette",
      category: "",
      postedBy: "",
    ),
  ];
  static final List<PostModel> fooData = [
    PostModel(
      imagePath: AppImages.foo1,
      title: "",
      description: "Wow! Momo Foods enters Bhopal with Wow! Momo, Wow China",
      category: "#Lifestyle",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.foo2,
      title: "",
      description: "Barista Coffee Company opens its first café in Ahmedabad",
      category: "#Lifestyle",
      postedBy: "",
    ),
  ];

  static final List<String> trending = [
    "Fashion & Lifestyle",
    "Beauty & Wellness",
    "Food & Beverage",
    "Travel & Adventure",
    "Education & Learning",
    "Automotive & Industrial",
    "Electronics & Gadgets",
  ];

  static final List<Map<String, dynamic>> leaderData = [
    {
      "image": AppImages.leader1,
      "avatar": AppImages.lada1,
      "description":
          "From a total of around 522 Apple stores across the world..",
      "title": "Top 5 iconic Apple stores across the world by design",
      "name": "Arundhati Roy",
    },
    {
      "image": AppImages.leader2,
      "avatar": AppImages.lada2,
      "description":
          "These companies created a lot of hype when they listed on the...",
      "title": "Rollercoaster ride of four retail industry IPOs",
      "name": "Vikram Seth",
    },
  ];

  static final List<PostModel> rData = [
    PostModel(
      imagePath: AppImages.r1,
      title: "Human touchpoint is extremely important for us,",
      description: "Fashion",
      category: "",
      postedBy: "",
    ),
    PostModel(
      imagePath: AppImages.r2,
      title: "Human touchpoint is extremely important for us,",
      description: "Fashion",
      category: "",
      postedBy: "",
    ),
  ];

  static final List<NewsItem> newsList = [
    NewsItem(
      title: "Croma opens 58 outlets in 6, Croma retails more than 16,000",
      subtitle:
          "These companies created a lot of hype when they listed on the...",
    ),
    NewsItem(
      title: "Select Citywalk opens 4 new stores in June",
      subtitle:
          "These companies created a lot of hype when they listed on the...",
    ),
  ];

  static final stories = [
    StoryItem(
      image: AppImages.red1,
      title:
          "8 retail companies headed by women, These brands are not just famous ...",
    ),
    StoryItem(
      image: AppImages.red2,
      title: "Joom Marketplace offers a global window for sellers...",
    ),
    StoryItem(
      image: AppImages.red3,
      title: "FreshToHome fixing a broken meat market retailing in...",
    ),
  ];

  static final List<String> headlines = [
    "Cinema industry welcomes lowering GST rates...",
    "Patanjali Ayurved to sell 7% stake in Patanjali",
    "Select Citywalk opens 4 new stores in June",
    "Govt imposes import restrictions on certain gold",
    "Joom Marketplace offers a global window for sellers",
  ];

  static List<BeautyNewsModel> beautyNews = [
    BeautyNewsModel(
      image: AppImages.b1,
      title: "Sugar Cosmetics unveils its 200th brand-owned store",
    ),
    BeautyNewsModel(
      image: AppImages.b2,
      title: "Athiya Shetty becomes the face of Just Herbs’...",
    ),
    BeautyNewsModel(
      image: AppImages.b3,
      title: "Indian stars dazzle at Cannes 2023",
    ),
    BeautyNewsModel(
      image: AppImages.b4,
      title: "Recode Studios to expand footprint with 5 store...",
    ),
  ];

  static List<String> topTabs = ["E-commerce", "People", "D2C"];

  static List<HorizontalNewsModel> horizontalNews = [
    HorizontalNewsModel(
      image: AppImages.t1,
      cat1: "Fashion",
      cat2: "Food",
      category: "#Fashion",
      title: "What makes Fila unique is its attitude and...",
      description:
          "The singer-songwriter has been spotted in the hybrid garment...",
    ),
    HorizontalNewsModel(
      image: AppImages.t2,
      cat1: "Shailesh",
      cat2: "Fashion",
      category: "#Fashion",
      title: "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      description:
          "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
    ),
    HorizontalNewsModel(
      image: AppImages.t3,
      cat1: "Fashion",
      cat2: "Food",
      category: "#Fashion",
      title: "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      description: "The Gucci loafer has been a signature style for 70 years.",
    ),
  ];

  static List<SimpleHorizontalNewsModel> smallHorizontalNews = [
    SimpleHorizontalNewsModel(
      image: AppImages.s1,
      cat1: "Select Citywalk",
      cat2: "Lifestyle",
      category: "#Fashion",
      title: "Select Citywalk opens 4 new stores in June",
      description:
          "The new stores opened at Select Citywalk include Choko la, Raymond",
    ),
    SimpleHorizontalNewsModel(
      image: AppImages.s2,
      cat1: "Infiniti Mall",
      cat2: "news",
      category: "#Fashion",
      title: "Infiniti Mall collaborates with T-Series & PVR Inox to unveil..",
      description:
          "Constructed by Rubik’s Cubes mosaic artist Selwyn Santmajor",
    ),
    SimpleHorizontalNewsModel(
      image: AppImages.s3,
      cat1: "Multimedia",
      cat2: "news",
      category: "#Fashion",
      title: "DLF creating new retail space in Delhi for France’s Galeries..",
      description:
          "DLF is earmarking space for the luxury retailer between two of its top-end",
    ),
  ];

  static List<PictureNewsModel> pictureNews = [
    PictureNewsModel(
      image: AppImages.p1,
      title: "Simplifying Retail Industry Compliance Management",
    ),
    PictureNewsModel(
      image: AppImages.p2,
      title: "ABFRL’s ethnic wear brand Jaypore enters Hyderabad",
    ),
    PictureNewsModel(
      image: AppImages.p3,
      title: "Mensa Brands brings home décor brand Folkulture to India",
    ),
  ];

  static List<String> soTabs = ["E-commerce", "People", "D2C"];

  static List<SectionNewsModel> soNews = [
    SectionNewsModel(
      image: AppImages.so1,
      cat1: "Lifestyle",
      cat2: "Fashion",
      category: "#Fashion",
      title: "Ecom Express appoints Ajay Chitkara",
      description: "Chitkara, who is at present serving as...",
    ),
    SectionNewsModel(
      image: AppImages.so2,
      cat1: "Lifestyle",
      cat2: "Fashion",
      category: "#Fashion",
      title: "DTDC sets up super hub",
      description: "Spread over 1,75,000 square feet of space",
    ),
    SectionNewsModel(
      image: AppImages.so3,
      cat1: "Lifestyle",
      cat2: "Fashion",
      category: "#Fashion",
      title: "KSH Distriparks bolsters its fleet",
      description: "With the addition of new vehicles, the...",
    ),
  ];
}
