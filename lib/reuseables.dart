import 'package:flutter/material.dart';
import 'package:fruit_hub/size_config.dart';

Widget foodlist(String imagepPath, var containerColor, String foodName,
    int numberOfPacks, String price) {
  return Padding(
    padding: EdgeInsets.only(
        left: getProportionateScreenWidth(10),
        right: getProportionateScreenWidth(10),
        top: getProportionateScreenHeight(10)),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(64),
                  height: getProportionateScreenHeight(65),
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(
                      right: getProportionateScreenWidth(15),
                      left: getProportionateScreenWidth(15),
                      top: getProportionateScreenHeight(15),
                      bottom: getProportionateScreenHeight(15)),
                  padding: EdgeInsets.all(0),
                  child: Hero(
                    tag: imagepPath,
                    child: Image.asset(imagepPath),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: Colors.black,
                          letterSpacing: -1,
                          fontFamily: "Brandon Grotesque"),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      "$numberOfPacks" "packs",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: Colors.black,
                          letterSpacing: -1,
                          fontFamily: "Brandon Grotesque"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Image.asset("images/naira.png", color: Color(0XFF27214D)),
                Text(price,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: Color(0XFF27214D),
                        letterSpacing: -1,
                        fontFamily: "Brandon Grotesque")),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Text fruitHubText(String sentence, double textSize, Color textColor) {
  return Text(
    sentence,
    style: TextStyle(
        fontSize: getProportionateScreenWidth(textSize),
        color: textColor,
        letterSpacing: -1,
        fontFamily: "Brandon Grotesque"),
  );
}

Image fruitHubImage(
        {String? theImage,
        Color? imageColor,
        required double imageheight,
        required double imageWidth}) =>
    Image.asset(
      "images/$theImage.png",
      color: imageColor,
      height: getProportionateScreenHeight(imageheight),
      width: getProportionateScreenWidth(imageWidth),
    );

Image fruitHubImage2(
        {String? theImage,
        Color? imageColor,
        }) =>
    Image.asset(
      "images/$theImage.png",
      color: imageColor,
      
    );

Widget foodDisplay(
  String containerImage,
  String nameOfFood,
  String amount,
) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        margin: EdgeInsets.only(
            left: getProportionateScreenWidth(15),
            top: getProportionateScreenHeight(15),
            right: getProportionateScreenWidth(7.5)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        width: getProportionateScreenWidth(152),
        height: getProportionateScreenHeight(165),
      ),
      Positioned(
        top: getProportionateScreenHeight(25),
        right: getProportionateScreenWidth(15),
        child: Icon(
          Icons.favorite_border_outlined,
          size: getProportionateScreenWidth(20),
          color: Color(0XFFFFA451),
        ),
      ),
      Positioned(
        left: getProportionateScreenWidth(50),
        top: getProportionateScreenHeight(35),
        child: Image.asset(
          containerImage,
        ),
      ),
      Positioned(
        right: getProportionateScreenWidth(35),
        bottom: getProportionateScreenHeight(45),
        child: Text(
          nameOfFood,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              letterSpacing: -1,
              color: Color(0XFF27214D),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        bottom: getProportionateScreenHeight(25),
        left: getProportionateScreenWidth(35),
        child: Image.asset(
          "images/smallnaira.png",
          color: Color(0XFFF08626),
          width: getProportionateScreenWidth(16),
          height: getProportionateScreenHeight(9),
        ),
      ),
      Positioned(
        left: getProportionateScreenWidth(50),
        bottom: getProportionateScreenHeight(20),
        child: Text(
          amount,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: -1,
              color: Color(0XFFF08626),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        right: getProportionateScreenWidth(20),
        bottom: getProportionateScreenHeight(20),
        child: Container(
            child: Icon(Icons.add, color: Color(0XFFFFA451)),
            decoration: BoxDecoration(
                color: Color(0XFFFFF2E7),
                borderRadius: BorderRadius.all(Radius.circular(100)))),
      )
    ],
  );
}

Widget bottomFoodDisplay(
    String containerImage,
    Color containerColor,
    String nameOfFood,
    String amount,
    double imageTopPosition,
    double imageLeftPosition) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        margin: EdgeInsets.only(
            left: getProportionateScreenWidth(15),
            top: getProportionateScreenHeight(15),
            right: getProportionateScreenWidth(7.5)),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: getProportionateScreenWidth(120),
        height: getProportionateScreenHeight(130),
      ),
      Positioned(
        top: getProportionateScreenHeight(25),
        right: getProportionateScreenWidth(15),
        child: Icon(
          Icons.favorite_border_outlined,
          size: getProportionateScreenWidth(15),
          color: Color(0XFFFFA451),
        ),
      ),
      Positioned(
        left: getProportionateScreenWidth(imageLeftPosition) ,
        top: getProportionateScreenHeight(imageTopPosition) ,
        child: Image.asset(
          containerImage,
        ),
      ),
      Positioned(
        right: getProportionateScreenWidth(22),
        bottom: getProportionateScreenHeight(25),
        child: Text(
          nameOfFood,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              letterSpacing: -1,
              color: Color(0XFF27214D),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        bottom: getProportionateScreenHeight(10),
        left: getProportionateScreenWidth(35),
        child: Image.asset(
          "images/smallnaira.png",
          color: Color(0XFFF08626),
          width: getProportionateScreenWidth(16),
          height: getProportionateScreenHeight(9),
        ),
      ),
      Positioned(
        left: getProportionateScreenWidth(50),
        bottom: getProportionateScreenHeight(5),
        child: Text(
          amount,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: -1,
              color: Color(0XFFF08626),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        right: getProportionateScreenWidth(20),
        bottom: getProportionateScreenHeight(3),
        child: Container(
            child: Icon(Icons.add, color: Color(0XFFFFA451)),
            decoration: BoxDecoration(
                color: Color(0XFFFFF2E7),
                borderRadius: BorderRadius.all(Radius.circular(100)))),
      )
    ],
  );
}
