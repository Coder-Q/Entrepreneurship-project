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
        Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: Text(
                  'Angles',
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
                        '- 35x35x5 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 40x40x5 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 40x40x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 45x45x5 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 45x45x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 50x50x5 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 50x50x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 65x65x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '- 65x65x8 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 65x65x10 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 75x75x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 75x75x8 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 75x75x10 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 90x90x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 90x90x8 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 90x90x10 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '- 100x100x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 100x100x8 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 100x100x10 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 100x100x12 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 110x110x6 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 110x110x8 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 110x110x10 MM',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        '- 110x110x12 MM',
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
