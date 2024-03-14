import 'package:flutter/material.dart';

class PartOfLearn extends StatefulWidget {
  const PartOfLearn({super.key});

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //appBar: PartOfAppBar(),
        );
  }
}

class PartOfAppBar extends StatelessWidget {
  const PartOfAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('data'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
