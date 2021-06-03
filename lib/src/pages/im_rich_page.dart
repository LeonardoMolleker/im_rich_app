import 'package:flutter/material.dart';
import 'package:i_am_rich_app/src/constants/constants.dart';

class ImRichPage extends StatelessWidget {
  final String firstText;
  final String secondText;

  ImRichPage({
    this.firstText = "You found one of the most valuable diamonds in the world",
    this.secondText = "You are rich!"
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Constants.height,
              width: Constants.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/diamond.png",
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Constants.padding,
                left: Constants.padding,
                right: Constants.padding,
              ),
              child: Text(
                this.firstText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Constants.fontSize,
                  fontFamily: 'Pattaya'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Constants.padding,
                left: Constants.padding,
                right: Constants.padding,
              ),
              child: Text(
                this.secondText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Constants.fontSize,
                    fontFamily: 'Pattaya',
                    shadows: [
                      Shadow(
                        color: Colors.yellowAccent,
                        blurRadius: 1.0,
                        offset: Offset(-3.0, 2.0)
                      )
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
