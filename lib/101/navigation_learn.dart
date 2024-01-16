import 'package:flutter/material.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context, const NavigateLearnDart());

              if (response is bool) {
                addSelected(
                  index,
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: const _floatinBottom(),
    );
  }
}

class _floatinBottom extends StatelessWidget {
  const _floatinBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {},
      child: const Icon(Icons.navigation_rounded),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings(),
    ));
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  // <T> jenerik
  return Navigator.of(context).push<T>(MaterialPageRoute(
    builder: (context) {
      return widget;
    },
    fullscreenDialog: true,
    settings: const RouteSettings(),
  ));
}
