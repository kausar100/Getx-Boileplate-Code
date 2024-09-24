import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/utils/flutter/extension.dart';
import 'package:flutter_getx_demo/utils/flutter/utilities/border_radius.dart';

class TabPair {
  final Tab tab;
  final Widget view;
  TabPair({required this.tab, required this.view});
}

List<TabPair> TabPairs = [
  TabPair(
    tab: const Tab(
      text: 'Intro',
    ),
    view: const Center(
      child: Text(
        'Intro here',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  TabPair(
    tab: const Tab(
      text: 'Ingredients',
    ),
    view: const Center(
      // replace with your own widget here
      child: Text(
        'Ingredients here',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  TabPair(
    tab: const Tab(
      text: 'Steps',
    ),
    view: const Center(
      child: Text(
        'Steps here',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  )
];

class TabBarAndTabViews extends StatefulWidget {
  @override
  _TabBarAndTabViewsState createState() => _TabBarAndTabViewsState();
}

class _TabBarAndTabViewsState extends State<TabBarAndTabViews>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: TabPairs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // give the tab bar a height [can change height to preferred height]
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: FxRadius.all(25.0),
          ),
          child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: FxRadius.all(25.0),
                color: const Color(0xFFFF8527),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: TabPairs.map((tabPair) => tabPair.tab).toList()),
        ).px8,
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: TabPairs.map((tabPair) => tabPair.view).toList()),
        ),
      ],
    ).px8;
  }
}
