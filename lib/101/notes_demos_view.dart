import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create your first note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            //  PngImage(name:ImageItems)
            _TitleWidget(title: _title),
            const Padding(
              padding: PaddingItems.horizontalPadding,
            //  child: _SubTitleWidget( ),
            )
          ],
        ),
      ),
    );
  }
}

// centere text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {super.key, this.textAlign = TextAlign.center, required this.title});
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title * 5, // bu burda olmayacak
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.amber, fontWeight: FontWeight.normal),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}
