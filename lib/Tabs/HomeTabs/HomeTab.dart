// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int carouselPage = 0;
  CarouselController nextButton = CarouselController();
  List<String> imageList = [
    Constants.carosol1ImagePath,
    Constants.carosol2ImagePath,
    Constants.carosol3ImagePath,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imageList.length,
              carouselController: nextButton,
              options: CarouselOptions(
                autoPlay: true,
                height: MediaQuery.of(context).size.height * 0.5,
                viewportFraction: 1,
                onPageChanged: (data, reason) {
                  carouselPage = data;
                  setState(() {});
                },
              ),
              itemBuilder: (context, index, reason) => Image.asset(
                imageList[index],
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
