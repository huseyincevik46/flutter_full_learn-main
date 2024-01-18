import 'package:flutter/material.dart';
import 'state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({Key? key}) : super(key: key);
// ekran yönetimi burda
  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}
