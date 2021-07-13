import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class Channels extends StatelessWidget {
  const Channels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Constants.channelImagePath,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
