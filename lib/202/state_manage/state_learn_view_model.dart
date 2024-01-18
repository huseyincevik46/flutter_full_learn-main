// iki katmanı yönetecek ara katman burası
import 'package:flutter/material.dart';

import 'state_manage_learn_view.dart';

// burda da lojiclerinizi yönetiyorsunuz
abstract class StateLearnViewModel extends State<StateManageLearnView> {
  // abstract olmalıydı çünkü hta veriyor..
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = false;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
