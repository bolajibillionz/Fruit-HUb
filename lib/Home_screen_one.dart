import 'package:flutter/material.dart';
import 'package:fruit_hub/add_to_basket.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFE5E5E5),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(15),
                    right: getProportionateScreenWidth(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fruitHubImage2(
                      theImage: "menu4",
                      imageColor: Color(0XFF070648),
                    ),
                    Column(
                      children: [
                        fruitHubImage2(theImage: "smallbasket"),
                        fruitHubText(
                          "My basket",
                          10,
                          Color(0XFF27214D),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(22),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                  fruitHubText(
                      "Hello Tony, What fruit salad \ncombo do you want today?",
                      20,
                      Color(0XFF27214D))
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                children: [
                  Container(
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenWidth(288),
                    margin: EdgeInsets.only(
                        left: getProportionateScreenWidth(20),
                        right: getProportionateScreenWidth(10),
                        top: getProportionateScreenHeight(20)),
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0XFFF3F4F9),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0XFF86869E),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        fruitHubText(
                            "Search for fruit salad combos", 14, Colors.black)
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(10),
                          top: getProportionateScreenHeight(25)),
                      child: fruitHubImage2(
                          theImage: "line", imageColor: Color(0XFF070648))),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Row(
                children: [
                  SizedBox(width: getProportionateScreenHeight(24)),
                  Text(
                    "Recommended Combo",
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(24),
                        letterSpacing: -1,
                        fontFamily: "Brandon Grotesque"),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                children: [
                  foodDisplay(
                    "images/honeylime.png",
                    "Honey lime combo",
                    "2,000",
                  ),
                  foodDisplay(
                      "images/berrysalad.png", "Berry mango combo", "8,000")
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenHeight(15),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fruitHubText("Hottest", 24, Color(0XFF27214D)),
                      fruitHubImage2(theImage: "singleline"),
                    ],
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(25),
                  ),
                  fruitHubText("Popular", 16, Color(0xff938DB5)),
                  SizedBox(
                    width: getProportionateScreenWidth(35),
                  ),
                  fruitHubText("New combo", 16, Color(0xff938DB5)),
                  SizedBox(
                    width: getProportionateScreenWidth(35),
                  ),
                  fruitHubText("Top", 16, Color(0xff938DB5)),
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddToBasket()));
                    },
                    child: bottomFoodDisplay(
                        "images/bottomfood1.png",
                        Color(0xffFFFAEB),
                        "Quinoa fruit salad",
                        "10,000",
                        30,
                        40),
                  ),
                  bottomFoodDisplay("images/bottomfood2.png", Color(0xffFEF0F0),
                      "Tropical fruit salad", "10,000", 43.0, 25),
                  Container(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(25)),
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(15),
                        left: getProportionateScreenWidth(10)),
                    width: getProportionateScreenWidth(60),
                    height: getProportionateScreenHeight(130),
                    decoration: BoxDecoration(
                      color: Color(0XFFF1EFF6),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        fruitHubImage2(theImage: "bottomfood3"),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        fruitHubText("Mello", 16, Color(0xff27214D)),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        Row(
                          children: [
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Image.asset(
                              "images/smallnaira.png",
                            ),
                            fruitHubText("10,0", 16, Color(0xffF08626))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
