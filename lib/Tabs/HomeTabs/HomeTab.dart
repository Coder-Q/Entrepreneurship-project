import 'package:entrepreneurship_project/Tabs/HomeTabTabs/AllProduct.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabTabs/Angles.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabTabs/Bars.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabTabs/Beams.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabTabs/Channels.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabTabs/StartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late PreloadPageController tabController;
  int tab = 0;

  void initState() {
    super.initState();
    tabController = PreloadPageController();
  }

  @override
  Widget build(BuildContext context) {
    return PreloadPageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      preloadPagesCount: 5,
      controller: tabController,
      onPageChanged: (data) {
        setState(() {
          tab = data;
        });
      },
      children: [
        StartPage(
          onTap: () {
            tabController.animateToPage(
              1,
              duration: Duration(milliseconds: 350),
              curve: Curves.easeInCubic,
            );
          },
        ),
        AllProducts(
          onTap: (int data) {
            tabController.animateToPage(
              data,
              duration: Duration(milliseconds: 350),
              curve: Curves.easeInCubic,
            );
          },
        ),
        Angles(),
        Bars(),
        Beams(),
        Channels(),
      ],
    );
  }
}
