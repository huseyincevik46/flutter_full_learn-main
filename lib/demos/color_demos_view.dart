// bir ekran
//bu ekran 3 button ve bunlara basılınca renl değişimi
// seçili olan button selected icon olsun.
import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color?
      initialColor; // adamın ilk colorını alıyoruz gelmezse diye ? koyduk.

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ??
        Colors.transparent; // null gelirse siyah ekran al
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    // old widget update işlemi yapmamızı saglayan fonk
    super.didUpdateWidget(oldWidget);
    inspect(widget);

    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      // old yani şimdikiyle yenilenmiş widgetı karşılaştırıyor.
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.yellow.index) {
              changeBackgroundColor(Colors.yellow);
            } else if (value == _MyColors.blue.index) {
              changeBackgroundColor(Colors.blue);
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.red,
                ),
                label: 'red'),
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.yellow,
                ),
                label: 'yellow'),
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.blue,
                ),
                label: 'yellow'),
          ]),
    );
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
