// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruit_hub/order_complete.dart';
import 'package:fruit_hub/reuseables.dart';

class BottomSheet2 extends StatelessWidget {
  const BottomSheet2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 500,
          width: 375,
          padding: EdgeInsets.only(
            top: 30,
            // right: 10,
            // left: 20,
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
                    width: 20,
                  ),
                  fruitHubText("Card Holders Name", 20, Color(0xff27214D)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 56,
                    width: 315,
                    margin: EdgeInsets.only(top: 20, bottom: 15, right: 20),
                    padding: EdgeInsets.only(
                        top: 10, right: 10, left: 20, bottom: 10),
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
                    width: 20,
                  ),
                  fruitHubText("Card Number", 20, Color(0xff27214D)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 56,
                    width: 315,
                    margin: EdgeInsets.only(top: 20, bottom: 30, right: 20),
                    padding: EdgeInsets.only(
                        top: 10, right: 10, left: 20, bottom: 10),
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
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fruitHubText("Date", 20, Color(0xff27214D),),
                      // fix position of date
                      
                      Container(
                        height: 56,
                        width: 134,
                        margin: EdgeInsets.only(top: 10, right: 20),
                        padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F1F1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: fruitHubText("10/30", 20, Color(0xffC2BDBD)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      fruitHubText("CCV", 20, Color(0xff27214D)),
                      Container(
                        height: 56,
                        width: 134,
                        margin: EdgeInsets.only(top: 10, right: 20),
                        padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
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
                height: 100,
                width: 375,
                // padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color(0xffFFA451),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderComplete()));
                      
                    }),
                    child: Container(
                      height: 56,
                    width: 135,
                    // padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    // margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: fruitHubText("Complete Order", 16, Color(0xffFFA451)),
                    ),
                      
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: -65,
          left: 162,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Colors.white),
              child: Icon(
                Icons.clear,
                size: 28,
                color: Color(0xff070648),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
