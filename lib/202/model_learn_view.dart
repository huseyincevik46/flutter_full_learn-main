import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1()
      ..userId = 1
      ..body = 'vb';
    user1.body = 'heello';

    final user2 = PostModel2(1, 2, 'b', 'fb');

    final user3 = PostModel3(1, 2, 'a', 'b');
    //user3.body = 'b'; final oldugu için değişim olmadı.

    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 =
        PostModel7(body: 'a'); // Service den data çekiyorsan en mantıklı bu
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
