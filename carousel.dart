import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
class Slide extends StatelessWidget {
  const Slide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
       child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
           
              ExactAssetImage('assets/images/slides/1.jpg'),
              ExactAssetImage('assets/images/slides/2.jpg'),
              ExactAssetImage('assets/images/slides/3.jpg'),
              ExactAssetImage('assets/images/slides/4.jpg'),
            ],
          ),
    
    );
  }
}