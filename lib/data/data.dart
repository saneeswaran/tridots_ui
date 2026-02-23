import 'package:tridos_task/constants/app_images.dart';
import 'package:tridos_task/data/post_model.dart';

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
}
