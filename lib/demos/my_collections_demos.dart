import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return _CatogoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CatogoryCard extends StatelessWidget {
  const _CatogoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  //final List<CollectionModel> _items;
  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingTop,
          child: Column(
            children: [
              Image.asset(_model.imagePath),
              Row(
                children: [Text(_model.title), Text('${_model.price} eth ')],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class CollectionItems {
  late final List<CollectionModel> _items;
  CollectionItems() {
    _items = [
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract art1',
          price: 3),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract art2',
          price: 3),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstract art3',
          price: 3)
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(top: 10);
  final paddingGeneral = const EdgeInsets.all(20);
}
