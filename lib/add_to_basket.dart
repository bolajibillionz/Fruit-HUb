import 'package:flutter/material.dart';
import 'package:fruit_hub/order_list.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class AddToBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFFFA451),
        body: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: getProportionateScreenHeight(32),
                  width: getProportionateScreenWidth(80),
                  margin: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(270),
                      top: getProportionateScreenHeight(25)),
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(4),
                      right: getProportionateScreenWidth(4)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      fruitHubText("Go Back", 16.0, Color(0xff272140))
                    ],
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(327),
                height: getProportionateScreenHeight(176),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(27)),
                child: fruitHubImage2(theImage: "break55"),
              ),
              Container(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(35)),
                decoration: BoxDecoration(
                  color: Color(0XFFE5E5E5),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(25)),
                        child: fruitHubText(
                          "Quinoa Fruit Salad",
                          32,
                          Color(0xff27214D),
                        )),
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xff333333),
                          size: getProportionateScreenHeight(35),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(25),
                        ),
                        fruitHubText("1", 24, Color(0xff27214D)),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Color(0xffFFF2E7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffFFA451),
                              size: 28,
                            )),
                        SizedBox(
                          width: getProportionateScreenWidth(100),
                        ),
                        fruitHubImage2(
                            theImage: "newnaira", imageColor: Colors.black),
                        fruitHubText("10,000", 24, Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(50),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(18),
                        ),
                        Column(
                          children: [
                            fruitHubText(
                                "One Pack Contains:", 20, Color(0xff27214D)),
                            Container(
                              child: fruitHubImage2(
                                theImage: "longline",
                                imageColor: Color(0xffFFA451),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        fruitHubText(
                            "Red Quinoa, Lime, Honey, Blueberries, Strawberries, \nMango, Fresh mint.",
                            16,
                            Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(35),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        fruitHubText(
                            "If you are looking for a new fruit salad to eat today, \nquinoa is the perfect brunch for you. make",
                            14,
                            Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(40),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              bottom: getProportionateScreenHeight(15)),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0XFFFFA451),
                            size: getProportionateScreenWidth(28),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(50),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderList()));
                          },
                          child: Container(
                            height: getProportionateScreenHeight(56),
                            width: getProportionateScreenWidth(230),
                            margin: EdgeInsets.only(
                                bottom: getProportionateScreenHeight(12)),
                            decoration: BoxDecoration(
                                color: Color(0XFFFFA451),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                                child: fruitHubText(
                                    "Add to basket", 16, Colors.white)),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(38),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
