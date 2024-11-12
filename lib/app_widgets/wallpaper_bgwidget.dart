import 'package:flutter/material.dart';

class WallPaperbgWidget extends StatelessWidget {
  String imgUrl;
  double mWidth;
  double mHeight;

  WallPaperbgWidget(
      {super.key, required this.imgUrl, this.mHeight = 200, this.mWidth = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        image: DecorationImage(
          image: NetworkImage(imgUrl), // Use AssetImage for local images
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
