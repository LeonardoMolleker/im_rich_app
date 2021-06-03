import 'package:flutter/material.dart';
import '../constants/constants.dart';

class ImRichPage extends StatelessWidget {
  final String firstText;
  final String secondText;

  ImRichPage({
    this.firstText = "You found one of the most valuable diamonds in the world",
    this.secondText = "You are rich!",
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
              height: Constants.principalContainerheight,
              width: Constants.principalContainerwidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/diamond.png",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.padding,
                left: Constants.padding,
                right: Constants.padding,
              ),
              child: Container(
                child: Text(
                  this.firstText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Constants.textFontSize,
                    fontFamily: 'Pattaya',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Constants.padding,
                left: Constants.padding,
                right: Constants.padding,
              ),
              child: Container(
                child: Text(
                  this.secondText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Constants.textFontSize,
                      fontFamily: 'Pattaya',
                      shadows: [
                        Shadow(
                          color: Colors.yellowAccent,
                          blurRadius: Constants.shadowBlurRadius,
                          offset: Offset(
                            Constants.shadowOffsetX,
                            Constants.shadowOffsetY,
                          ),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
