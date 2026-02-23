import 'package:flutter/material.dart';

class HeadNews extends StatelessWidget {
  final String image;
  const HeadNews({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(12),
      height: size.height * 0.25,
      width: size.width * 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
