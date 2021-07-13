import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';

class Beams extends StatelessWidget {
  const Beams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Constants.beamsImagePath,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
