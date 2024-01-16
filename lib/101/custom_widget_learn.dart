/*import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomFootButton(title: title),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddinUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(8.0);
}

/class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddinUtility {
  CustomFootButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: redColor, shape: const StadiumBorder()),
      onPressed: () {},
      child: Padding(
        padding: normalPadding,
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}*/
