import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tridos_task/constants/app_images.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width * 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //drawer icon
            SvgPicture.asset(AppImages.drawer),
            Image.asset(AppImages.logo),
            SvgPicture.asset(AppImages.search),
          ],
        ),
      ),
    );
  }
}
