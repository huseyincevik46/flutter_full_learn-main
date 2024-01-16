import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: _MytabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MytabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MytabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          shape: const CircularNotchedRectangle(),
          child: _myTabView(),
        ),
        appBar: AppBar(),
        body: _tabbarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        padding: EdgeInsets.zero,
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MytabViews.values
            .map((e) => Tab(
                  text: '${e.name}',
                ))
            .toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.yellow,
          ),
        ]);
  }
}

enum _MytabViews { home, settings, favorite, profile }

extension _myTabViewExtension on _MytabViews {}
