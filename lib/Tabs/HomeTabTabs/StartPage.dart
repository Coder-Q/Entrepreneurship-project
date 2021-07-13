import 'package:carousel_slider/carousel_slider.dart';
import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class StartPage extends StatefulWidget {
  final Function() onTap;
  const StartPage({Key? key, required this.onTap}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int carouselPage = 0;
  CarouselController nextButton = CarouselController();
  List<String> imageList = [
    Constants.carosol1ImagePath,
    Constants.carosol2ImagePath,
    Constants.carosol3ImagePath,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
              itemCount: imageList.length,
              carouselController: nextButton,
              options: CarouselOptions(
                autoPlayAnimationDuration: Duration(milliseconds: 1500),
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
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    nextButton.animateToPage(carouselPage - 1);
                  },
                  child: HoverContainer(
                    cursor: SystemMouseCursors.click,
                    hoverColor: Colors.black.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.05,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.left_chevron,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    nextButton.animateToPage(carouselPage + 1);
                  },
                  child: HoverContainer(
                    cursor: SystemMouseCursors.click,
                    hoverColor: Colors.black.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.05,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 10),
          child: Text(
            'THE STRENGTH OF PURE STEEL',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 20),
          child: Text(
            'WELCOME TO BALBIR GROUP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 10),
          child: Text(
            'BALBIR GROUP is involved in quality Steel manufacturing in Silwassa & Gujarat for almost two decade.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 40),
          child: Text(
            'The Group has fully automatic steel rolling mills at Silvassa (D & NH) and Vapi (Gujarat) manufacturing quality Rebars and Structural Steel (Angles, Channels, Beams)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Text(
                'OUR PRODUCTS',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              HoverButton(
                onpressed: widget.onTap,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()
                      ..rotateZ(-90 * 3.1415927 / 180),
                    child: Icon(
                      CupertinoIcons.chevron_left_2,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
