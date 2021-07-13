import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class AllProducts extends StatelessWidget {
  final Function(int) onTap;
  const AllProducts({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Constants.allImagesPath,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomImageContainer(
                      imageName: 'Angles',
                      imagePath: Constants.anglesImagePath,
                      onTap: () => onTap(2),
                    ),
                    CustomImageContainer(
                      imageName: 'Bars',
                      imagePath: Constants.barsImagePath,
                      onTap: () => onTap(3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomImageContainer(
                      imageName: 'Beams',
                      imagePath: Constants.beamsImagePath,
                      onTap: () => onTap(4),
                    ),
                    CustomImageContainer(
                      imageName: 'Channels',
                      imagePath: Constants.channelImagePath,
                      onTap: () => onTap(5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomImageContainer extends StatelessWidget {
  final String imagePath, imageName;
  final Function() onTap;
  const CustomImageContainer(
      {Key? key,
      required this.imagePath,
      required this.imageName,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: HoverContainer(
        cursor: SystemMouseCursors.click,
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      imageName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
