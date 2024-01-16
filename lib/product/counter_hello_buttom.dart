import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class CounterHelloButtonState extends StatefulWidget {
  const CounterHelloButtonState({super.key});

  @override
  State<CounterHelloButtonState> createState() =>
      _CounterHelloButtonStateState();
}

class _CounterHelloButtonStateState extends State<CounterHelloButtonState> {
  int _counterCustom = 0;
  final String _welcomeTitle = languageItems.welcomeTitle;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter,
        child: Text('$_welcomeTitle $_counterCustom'));
  }
}
