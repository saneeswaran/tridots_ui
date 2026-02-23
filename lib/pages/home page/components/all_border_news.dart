import 'package:flutter/material.dart';

class AllBorderNews extends StatelessWidget {
  const AllBorderNews({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: size.width * 1,
      // child: ,
    );
  }
}
