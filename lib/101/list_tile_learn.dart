import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const RandomImage(),
                contentPadding: EdgeInsets.zero, // padingine karıştırmıyor
                //dense: true, // olabildiğince sıkıştırıyor compenenti
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}
