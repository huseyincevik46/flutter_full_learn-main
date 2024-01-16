import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          print(index);
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200')),
              ],
            ),
          );
        },
        itemCount: 15,
        // ListView.builder(itemBuilder: ((context, index) {
        // print('index');
        //return Column(
        //children: [
        //const Placeholder(
        //color: Colors.red,
        //),
        //Text('$index')
        //],
      ),
      //)
    );
    //);
  }
}
