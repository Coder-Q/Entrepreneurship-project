import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  const Bars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Constants.barsImagePath,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
