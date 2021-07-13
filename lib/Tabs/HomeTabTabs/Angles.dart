import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class Angles extends StatelessWidget {
  const Angles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Constants.anglesImagePath,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
