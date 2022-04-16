import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletx/NavigationBar.dart';
import 'package:walletx/colors.dart';

import 'AlbumArt.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double slider = 2.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          Navbar(),
          Container(
            height: size.height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            "Bitch i'm back",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            "Moosetape",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              value: slider,
              onChanged: (value) {
                setState(() {
                  slider = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
        ],
      ),
    );
  }
}
