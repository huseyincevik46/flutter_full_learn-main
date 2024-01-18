import 'package:flutter/material.dart';

class PartOfLearn extends StatefulWidget {
  const PartOfLearn({super.key});

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParOfaAppbar(),
    );
  }
}

class ParOfaAppbar extends StatelessWidget {
  const ParOfaAppbar({
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
}
