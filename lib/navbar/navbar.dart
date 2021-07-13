import 'package:entrepreneurship_project/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hovering/hovering.dart';

class Navbar extends StatelessWidget {
  final Function(int) onTap;

  const Navbar({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // print(constraints.maxWidth);
        if ((constraints.maxWidth > 1200) ||
            (constraints.maxWidth > 1100 && constraints.maxWidth < 1200)) {
          return DesktopNavbar(
            onTap: onTap,
          );
        } else {
          return MobileNavbar(
            onTap: onTap,
          );
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  final Function(int) onTap;

  const DesktopNavbar({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HoverButton(
              child: Row(
                children: [
                  Image.asset(
                    Constants.logoImagePath,
                    width: 130,
                  ),
                  Text(
                    "Balbir Rolling Mills",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ],
              ),
              onpressed: () {},
            ),
            Row(
              children: <Widget>[
                HoverButtonsForThis(
                  text: 'Home',
                  icon: Icons.home_outlined,
                  onPress: () => onTap(0),
                ),
                SizedBox(
                  width: 30,
                ),
                HoverButtonsForThis(
                  text: 'About us',
                  icon: CupertinoIcons.drop_triangle,
                  onPress: () => onTap(1),
                ),
                SizedBox(
                  width: 30,
                ),
                HoverButtonsForThis(
                  text: 'Product',
                  icon: CupertinoIcons.bag_badge_plus,
                  onPress: () => onTap(2),
                ),
                SizedBox(
                  width: 30,
                ),
                HoverButtonsForThis(
                  text: 'Why Balbir?',
                  onPress: () => onTap(3),
                ),
                SizedBox(
                  width: 30,
                ),
                HoverButton(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Text(
                      "Get started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onpressed: () => onTap(4),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  final Function(int) onTap;

  const MobileNavbar({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: HoverButton(
                child: Row(
                  children: [
                    Image.asset(
                      Constants.logoImagePath,
                      width: 130,
                    ),
                    Text(
                      "Balbir Rolling Mills",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ],
                ),
                onpressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      HoverButtonsForThis(
                        text: 'Home',
                        icon: Icons.home_outlined,
                        onPress: () => onTap(0),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      HoverButtonsForThis(
                        text: 'About us',
                        icon: CupertinoIcons.drop_triangle,
                        onPress: () => onTap(1),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      HoverButtonsForThis(
                        text: 'Product',
                        icon: CupertinoIcons.bag_badge_plus,
                        onPress: () => onTap(2),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      HoverButtonsForThis(
                        text: 'Why Balbir?',
                        onPress: () => onTap(3),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      HoverButton(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Text(
                            "Get started",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onpressed: () => onTap(4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverButtonsForThis extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function() onPress;

  const HoverButtonsForThis(
      {Key? key, required this.text, this.icon, required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HoverButton(
      minWidth: 110,
      hoverColor: Colors.black.withOpacity(0.5),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          icon != null
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Container()
        ],
      ),
      onpressed: onPress,
    );
  }
}
