import 'package:flutter/material.dart';

Widget foodlist(String imagepPath, var containerColor, String foodName,
    int numberOfPacks, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 65,
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(0),
                  child: Hero(
                    tag: imagepPath,
                    child: Image.asset(imagepPath),
                    // fit: BoxFit.cover,
                    // height: 75,
                    // width: 75,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          letterSpacing: -1,
                          fontFamily: "Brandon Grotesque"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$numberOfPacks" "packs",
                      style: TextStyle(
                          fontSize: 14,
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
                        fontSize: 16,
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
        fontSize: textSize,
        color: textColor,
        letterSpacing: -1,
        fontFamily: "Brandon Grotesque"),
  );
}

Image fruitHubImage(
        {String? theImage,
        Color? imageColor,
        double? imageheight,
        double? imageWidth}) =>
    Image.asset(
      "images/$theImage.png",
      color: imageColor,
      height: imageheight,
      width: imageWidth,
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
        margin: EdgeInsets.only(left: 15, top: 15, right: 7.5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        width: 152,
        height: 165,
      ),
      Positioned(
        top: 25,
        right: 15,
        child: Icon(
          Icons.favorite_border_outlined,
          size: 20,
          color: Color(0XFFFFA451),
        ),
      ),
      Positioned(
        left: 50,
        top: 35,
        child: Image.asset(
          containerImage,
        ),
      ),
      Positioned(
        right: 35,
        bottom: 45,
        child: Text(
          nameOfFood,
          style: TextStyle(
              fontSize: 16,
              letterSpacing: -1,
              color: Color(0XFF27214D),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        bottom: 25,
        left: 35,
        child: Image.asset(
          "images/smallnaira.png",
          color: Color(0XFFF08626),
          width: 16,
          height: 9,
        ),
      ),
      Positioned(
        left: 50,
        bottom: 20,
        child: Text(
          amount,
          style: TextStyle(
              fontSize: 14,
              letterSpacing: -1,
              color: Color(0XFFF08626),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        right: 20,
        bottom: 20,
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
        margin: EdgeInsets.only(left: 15, top: 15, right: 7.5),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 120,
        height: 130,
      ),
      Positioned(
        top: 25,
        right: 15,
        child: Icon(
          Icons.favorite_border_outlined,
          size: 15,
          color: Color(0XFFFFA451),
        ),
      ),
      Positioned(
        left: imageLeftPosition,
        top: imageTopPosition,
        child: Image.asset(
          containerImage,
        ),
      ),
      Positioned(
        right: 22,
        bottom: 25,
        child: Text(
          nameOfFood,
          style: TextStyle(
              fontSize: 16,
              letterSpacing: -1,
              color: Color(0XFF27214D),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        bottom: 10,
        left: 35,
        child: Image.asset(
          "images/smallnaira.png",
          color: Color(0XFFF08626),
          width: 16,
          height: 9,
        ),
      ),
      Positioned(
        left: 50,
        bottom: 5,
        child: Text(
          amount,
          style: TextStyle(
              fontSize: 14,
              letterSpacing: -1,
              color: Color(0XFFF08626),
              fontFamily: "Brandon Grotesque"),
        ),
      ),
      Positioned(
        right: 20,
        bottom: 3,
        child: Container(
            child: Icon(Icons.add, color: Color(0XFFFFA451)),
            decoration: BoxDecoration(
                color: Color(0XFFFFF2E7),
                borderRadius: BorderRadius.all(Radius.circular(100)))),
      )
    ],
  );
}

