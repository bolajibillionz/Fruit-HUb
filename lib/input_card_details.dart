// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruit_hub/order_complete.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class BottomSheet2 extends StatelessWidget {
  const BottomSheet2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Container(
          height: getProportionateScreenHeight(500),
          width: getProportionateScreenWidth(375),
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(30),
          ),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  fruitHubText("Card Holders Name", 20, Color(0xff27214D)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  Container(
                    height: getProportionateScreenHeight(56),
                    width: getProportionateScreenWidth(315),
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(20),
                        bottom: getProportionateScreenHeight(15),
                        right: getProportionateScreenWidth(20)),
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(10),
                        right: getProportionateScreenWidth(10),
                        left: getProportionateScreenWidth(20),
                        bottom: getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F1F1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:
                        fruitHubText("Adolphus Chris", 20, Color(0xffC2BDBD)),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  fruitHubText("Card Number", 20, Color(0xff27214D)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  Container(
                    height: getProportionateScreenHeight(56),
                    width: getProportionateScreenWidth(315),
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(20),
                        bottom: getProportionateScreenHeight(30),
                        right: getProportionateScreenWidth(20)),
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(10),
                        right: getProportionateScreenWidth(10),
                        left: getProportionateScreenWidth(20),
                        bottom: getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F1F1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: fruitHubText(
                        "1234 5678 9012 1314", 20, Color(0xffC2BDBD)),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fruitHubText(
                        "Date",
                        20,
                        Color(0xff27214D),
                      ),
                      Container(
                        height: getProportionateScreenHeight(56),
                        width: getProportionateScreenWidth(134),
                        margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(10),
                            right: getProportionateScreenWidth(20)),
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(20),
                            top: getProportionateScreenHeight(15),
                            bottom: getProportionateScreenWidth(15)),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F1F1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: fruitHubText("10/30", 20, Color(0xffC2BDBD)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fruitHubText("CCV", 20, Color(0xff27214D)),
                      Container(
                        height: getProportionateScreenHeight(56),
                        width: getProportionateScreenWidth(134),
                        margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(10),
                            right: getProportionateScreenWidth(20)),
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(20),
                            top: getProportionateScreenHeight(15),
                            bottom: getProportionateScreenHeight(15)),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F1F1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: fruitHubText("123", 20, Color(0xffC2BDBD)),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(375),
                margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                decoration: BoxDecoration(
                  color: Color(0xffFFA451),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderComplete()));
                    }),
                    child: Container(
                      height: getProportionateScreenHeight(55),
                      width: getProportionateScreenWidth(135),
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: fruitHubText(
                            "Complete Order", 16, Color(0xffFFA451)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(-65),
          left: getProportionateScreenWidth(162),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: getProportionateScreenHeight(45),
              width: getProportionateScreenWidth(45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Colors.white),
              child: Icon(
                Icons.clear,
                size: getProportionateScreenWidth(28),
                color: Color(0xff070648),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
