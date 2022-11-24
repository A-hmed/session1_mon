import 'package:flutter/material.dart';

import '../main.dart';
import '../page_box.dart';
import '../page_image.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="Home";
  List<PageImageData> items = [
    PageImageData(imagePath: "assets/car.jpg", title: "cars"),
    PageImageData(imagePath: "assets/sports.jpg", title: "sports"),
    PageImageData(imagePath: "assets/car.jpg", title: "cars"),
    PageImageData(imagePath: "assets/sports.jpg", title: "sports"),
    PageImageData(imagePath: "assets/car.jpg", title: "cars"),
    PageImageData(imagePath: "assets/sports.jpg", title: "sports"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First app"),
          centerTitle: true,
          actions: [Icon(Icons.video_call)],
        ),
        body: Column(
          children: [
            Row(
              children: [PageBox(title: "news"), PageBox(title: "magazine")],
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5 / 1,
                      mainAxisSpacing: 9,
                      crossAxisSpacing: 4),
                  itemBuilder: (context, pos) => PageImage(item: items[pos])),
            )
          ],
        ));
  }
}
