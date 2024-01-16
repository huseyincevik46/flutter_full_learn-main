import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  color: Colors.green,
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                )),
                Expanded(
                    child: Container(
                  color: Colors.pink,
                )),
              ],
            )),
        const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('a'),
                Text('aa4'),
                Text('aa6'),
              ],
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
            )),
        const SizedBox(
          height: ProjectContainerSizes.cardHeight,
        )
      ]),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
