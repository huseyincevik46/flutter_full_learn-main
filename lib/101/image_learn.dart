import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 400,
          width: 300,
          child: Image.asset(
            "assets/—Pngtree—books and apple vector illustration_5067392.png",
            fit: BoxFit.cover,
            height: 100,
          ),
        )
      ]),
    );
  }
}
