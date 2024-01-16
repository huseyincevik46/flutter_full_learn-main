import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn(
      {super.key}); // padding iki kompenent arası boşluk vermeyi sağlıyor.
  // hem sağdan hem soldan hizalama yapar padding
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding
              .pagePaddingVertical, // paddingi aynıysa projemde ortak sabitliyorum.
          child: Column(
            // paddingler genelikle aynı olmalı çok özel değilse
            children: [
              Padding(
                  // paddingi burda değil Columnu sarmalayarak vermek lazım.
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.white,
                    height: 100,
                    width: 200,
                  )),
              Container(
                color: Colors.white,
                height: 100,
                width: 200,
              )
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}
