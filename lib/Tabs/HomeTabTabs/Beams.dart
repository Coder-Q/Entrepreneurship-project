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
        Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: Text(
                  'Beams',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '- 100x50 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 125x70 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 150x75 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 200x100 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 250x125 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
