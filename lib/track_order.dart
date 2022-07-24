import 'package:flutter/material.dart';
import 'package:fruit_hub/details_bottom_sheet.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class TrackOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFFFA451),
        body: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(19.1),),
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    height: getProportionateScreenHeight(32),
                    width: getProportionateScreenWidth(85),
                    margin: EdgeInsets.only(
                        left: getProportionateScreenWidth(20),
                        right: getProportionateScreenWidth(35),
                        top: getProportionateScreenHeight(63)),
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(4),
                        right: getProportionateScreenWidth(4)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                        fruitHubText("Go back", 16, Color(0xff27214D))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: getProportionateScreenWidth(35), top: getProportionateScreenHeight(63)),
                  child: fruitHubText("Delivery status", 24, Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(45),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              height: getProportionateScreenHeight(650),
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(35),
                left: getProportionateScreenWidth(30),
              ),
              decoration: BoxDecoration(
                color: Color(0XFFE5E5E5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(65),
                        width: getProportionateScreenWidth(64),
                        margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(20),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffFFFAEB)),
                        child: Center(
                          child: Image.asset("images/order.png"),
                        ),
                      ),
                      fruitHubText("Order Taken", 16, Colors.black),
                      Container(
                        height: getProportionateScreenHeight(24),
                        width: getProportionateScreenWidth(24),
                        margin: EdgeInsets.only(left: getProportionateScreenWidth(130)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff4CD964)),
                        child: Center(
                          child: Image.asset("images/smallcheck.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(30),
                      ),
                      Image.asset("images/downline1.png",
                          height: getProportionateScreenHeight(40), 
                          width: getProportionateScreenWidth(2), 
                          color: Color(0xffFFA451)),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(2),
                  ),
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(65),
                        width: getProportionateScreenWidth(64),
                        margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(20),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffFF1EFF6)),
                        child: Center(
                          child: Image.asset("images/processed.png"),
                        ),
                      ),
                      fruitHubText("Order Is Being Prepared", 16, Colors.black),
                      Container(
                        height: getProportionateScreenHeight(24),
                        width: getProportionateScreenWidth(24),
                        margin: EdgeInsets.only(left: getProportionateScreenWidth(70)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff4CD964)),
                        child: Center(
                          child: Image.asset("images/smallcheck.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(30),
                      ),
                      Image.asset("images/downline2.png",
                          height: getProportionateScreenHeight(40), width: getProportionateScreenWidth(2), color: Color(0xffFFA451)),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(2),
                  ),
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(65),
                        width: getProportionateScreenWidth(64),
                        margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(20),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffFEF0F0)),
                        child: Center(
                          child: Image.asset("images/bike.png"),
                        ),
                      ),
                      Column(
                        children: [
                          fruitHubText(
                              "Order Is Being Delivered", 16, Colors.black),
                          fruitHubText("Your delivery agent is coming", 14,
                              Colors.black),
                        ],
                      ),
                      Container(
                        height: getProportionateScreenHeight(40),
                        width: getProportionateScreenWidth(40),
                        margin: EdgeInsets.only(left: getProportionateScreenWidth(60)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffFFA451)),
                        child: Center(
                          child: Image.asset("images/phone.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(30),
                      ),
                      Image.asset("images/downline3.png",
                          height: getProportionateScreenHeight(20), width: getProportionateScreenWidth(2), color: Color(0xffFFA451)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, bottom: 0),
                    height: getProportionateScreenHeight(150),
                    width: getProportionateScreenWidth(300),
                    child: Image.asset("images/map.png"),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(30),
                      ),
                      Image.asset("images/downline4.png",
                          height: getProportionateScreenHeight(30), width: getProportionateScreenWidth(4), color: Color(0xffFFA451)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(65),
                        width: getProportionateScreenWidth(65),
                        margin: EdgeInsets.only(right: getProportionateScreenWidth(20)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffF0FEF8)),
                        child: Center(
                          child: Container(
                            height: getProportionateScreenHeight(40),
                            width: getProportionateScreenWidth(40),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xff4CD964)),
                            child: Center(
                              child: Image.asset(
                                "images/smallcheck.png",
                                height: 15,
                                width: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      fruitHubText("Order Received", 16, Colors.black),
                      SizedBox(
                        width: getProportionateScreenWidth(100),
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: getProportionateScreenHeight(8),
                        width: getProportionateScreenWidth(8),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: getProportionateScreenHeight(8),
                        width: getProportionateScreenWidth(8),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: getProportionateScreenHeight(8),
                        width: getProportionateScreenWidth(8),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
