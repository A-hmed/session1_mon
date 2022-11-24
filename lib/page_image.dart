import 'package:flutter/material.dart';

import 'main.dart';

class PageImage extends StatelessWidget {
  // String text;
  // String imagePath;
  PageImageData item;

  PageImage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
            color: Colors.red,
            child: Image.asset(
              item.imagePath,
              height: double.infinity,
              fit: BoxFit.fill,
            )),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            color: const Color.fromRGBO(136, 43, 189, .5),
            child: Text(item.title,
                style: const TextStyle(fontSize: 20, color: Colors.white)))
      ],
    );
  }
}
