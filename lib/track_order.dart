import 'package:flutter/material.dart';
import 'package:fruit_hub/details_bottom_sheet.dart';
import 'package:fruit_hub/reuseables.dart';

class TrackOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFFFA451),
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    height: 32,
                    width: 85,
                    margin: EdgeInsets.only(left: 20, right: 35, top: 63),
                    padding: EdgeInsets.only(left: 4, right: 4),
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
                  margin: EdgeInsets.only(left: 0, right: 35, top: 63),
                  child: fruitHubText("Delivery status", 24, Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              height: 650,
              padding: EdgeInsets.only(top: 35, left: 30, ),
              decoration: BoxDecoration(
                color: Color(0XFFE5E5E5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 64,
                        margin: EdgeInsets.only(
                          right: 20,
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
                        height: 24,
                        width: 24,
                        margin: EdgeInsets.only(left: 130),
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
                        width: 30,
                      ),
                      Image.asset("images/downline1.png",
                          height: 40, width: 2, color: Color(0xffFFA451)),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 64,
                        margin: EdgeInsets.only(
                          right: 20,
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
                        height: 24,
                        width: 24,
                        margin: EdgeInsets.only(left: 70),
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
                        width: 30,
                      ),
                      Image.asset("images/downline2.png",
                          height: 40, width: 2, color: Color(0xffFFA451)),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 64,
                        margin: EdgeInsets.only(
                          right: 20,
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
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 60),
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
                        width: 30,
                      ),
                      Image.asset("images/downline3.png",
                          height: 20, width: 2, color: Color(0xffFFA451)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, bottom: 0),
                    height: 150,
                    width: 300,
                    child: Image.asset("images/map.png"),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset("images/downline4.png",
                          height: 30, width: 4, color: Color(0xffFFA451)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffF0FEF8)),
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
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
                        width: 100,
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: 8,
                        width: 8,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: 8,
                        width: 8,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/dot.png",
                        height: 8,
                        width: 8,
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
