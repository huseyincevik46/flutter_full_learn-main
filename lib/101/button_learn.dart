import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'save',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onPressed: () {},
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text('data')), //backgroundu olan bir kompenent
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanın rengini düzenle.
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red, shape: const CircleBorder()),
              onPressed: () {},
              child: const Text('dsfsdf')), //borderradius lu alan veriyor.
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ), //  boşluk attık
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black),
              onPressed: () {},
              child: Text(
                'place bid',
                style: Theme.of(context).textTheme.headline4,
              ))
        ],
      ),
    );
  }
}
