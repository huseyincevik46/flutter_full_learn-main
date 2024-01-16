import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            // elevation dur biraz öne çıkar sayfada
            margin: ProjectMargins
                .cardMargin, // padding gib ama margin dışardan sınırlıyor
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
            _CustomCard(
              child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text('Ali'),
            ),
          ))
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  final Widget child; // bu custom card oldugu için child içinde verilmez dışarıdan alınır.
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));// dğeri burda vermek çok daha profesyonel 

   _CustomCard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation dur biraz öne çıkar sayfada
     // margin: const EdgeInsets.all(10), bunu main sayfasında tanımladık
      shape: roundedRectangleBorder,
   // padding gib ama margin dışardan sınırlıyor
      child: child , /*SizedBox( // bu kullanım best practices
        height: 100,
        width: 100,
        child: Center(child: Text('ali')),
      ),*/
    );
  }
}
