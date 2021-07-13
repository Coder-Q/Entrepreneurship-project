import 'package:entrepreneurship_project/Tabs/HomeTabs/AboutUsTab.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabs/ContactUsTab.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabs/HomeTab.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabs/ProdutsTab.dart';
import 'package:entrepreneurship_project/Tabs/HomeTabs/WhyBalbirTab.dart';
import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

import '../navbar/navbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PreloadPageController tabController;
  int tab = 0;

  void initState() {
    super.initState();
    tabController = PreloadPageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromRGBO(195, 20, 50, 1.0),
              Color.fromRGBO(36, 11, 54, 1.0)
            ])),
        child: Column(
          children: <Widget>[
            Navbar(
              onTap: (int data) {
                tabController.animateToPage(
                  data,
                  duration: Duration(milliseconds: 350),
                  curve: Curves.easeInCubic,
                );
              },
            ),
            Expanded(
              child: PreloadPageView(
                physics: BouncingScrollPhysics(),
                preloadPagesCount: 5,
                controller: tabController,
                onPageChanged: (data) {
                  setState(() {
                    tab = data;
                  });
                },
                children: [
                  HomeTab(),
                  AboutUsTab(),
                  ProdutsTab(),
                  WhyBalbirTab(),
                  ContactUsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
