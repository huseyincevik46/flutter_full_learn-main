import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(child: RandomImage(), bottom: 25),
                    Positioned(
                        height: 50,
                        width: 0,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(),
                        ))
                  ],
                )),
            Spacer(
              flex: 6,
            )
          ],
        ));
  }
}
