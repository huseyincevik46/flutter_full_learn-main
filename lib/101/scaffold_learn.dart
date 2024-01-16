import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app tasarım iskeletidir Scaffold.
      appBar: AppBar(), // iskelertin başı olarak düşülenebilir.
      body: const Text('merhaba'), // iskeletin orta (gövdesi).
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      drawer: const Drawer(),
      bottomSheet: BottomSheet(
        builder: (context) {
          return const Text('aa');
        },
        onClosing: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        // iskeletin aalt kısmı
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'aa'),
      ]),
    );
  }
}
