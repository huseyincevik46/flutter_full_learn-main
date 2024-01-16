import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const CenterCirculaarProgress(),
    );
  }
}

class CenterCirculaarProgress extends StatelessWidget {
  const CenterCirculaarProgress({super.key});
  final redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: redColor,
      strokeWidth: 10,
      value: 0.4,
    ));
  }
}
