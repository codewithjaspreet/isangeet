import 'package:flutter/material.dart';
import 'package:walletx/colors.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: darkPrimaryColor,
                  offset: Offset(20, 8),
                  spreadRadius: 3,
                  blurRadius: 25),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -4),
                  spreadRadius: -2,
                  blurRadius: 20)
            ]),
        height: 260,
        width: 260,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://t2.genius.com/unsafe/300x300/https%3A%2F%2Fimages.genius.com%2Feaf202dd888ff47a0ffd157cb898c93e.720x720x1.jpg',
            fit: BoxFit.fill,
          ),
        ));
  }
}
