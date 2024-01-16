import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: /*Column(
        children: [
          const Spacer(),
          Expanded(
            child: */
          ListView(
        // yatayda listview
        padding: EdgeInsets.zero,
        children: [
          //fittedbox ekrana tam sıgdırır
          FittedBox(
            child: Text(
              'Merhaba',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),

          const Divider(), // arayı ayırır boşluk verir
          SizedBox(
              // dikeyde listview yapıyoruz ekranın yarısını alarak
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                ],
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          //const _ListDemo()
        ],
      ),
    );
    // ],
    //),
    // );*/
  }
}

class _ListDemo extends StatelessWidget {
  const _ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
/*
  @override
  void initState() {
    super.initState();
    print('hello');
  }
}

void dispose() {
  super.dispose();
  print('exit');
}
Widget @override
Widget build(BuildContext context) {
  return  const Placeholder();
}*/
