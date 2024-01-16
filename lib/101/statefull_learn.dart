import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_buttom.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});
// ana widget ve değişmez ,dışarıyla haberleşme yeri
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  // asıl işlemleri gösteren,logic
  int _countvalue = 0;
  /*void incrementvalue() {
    setState(() {
      _countvalue = _countvalue + 1;
    });
  }

  void deincrementvalue() {
    _countvalue = _countvalue - 1;
  }*/
  // yukarıdaki gibi yapmaktansa tek fonksiyonda halletmek lazım
  int _countValue = 0;

  final int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(languageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_countValue.toString(),
                  style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterHelloButtonState(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
