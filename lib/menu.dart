import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  TabBarView _buildTabBarView() {
    return TabBarView(children: [
      Container(
        color: Colors.white,
      ),
      Container(
        color: Colors.white,
      ),
    ]);
  }

  TabBar _buildTabBar() {
    return TabBar(tabs: [
      Tab(
        child: Text("Menu"),
      ),
      Tab(
        child: Text("reviews"),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (_, __) {
                  return <Widget>[
                    SliverAppBar(
                      pinned: true,
                      floating: true,
                      snap: true,
                      expandedHeight: 200,
                      bottom: _buildTabBar(),
                    )
                  ];
                },
                body: _buildTabBarView(),
              )),
        ));
  }
}
