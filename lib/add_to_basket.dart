import 'package:flutter/material.dart';
import 'package:fruit_hub/order_list.dart';
import 'package:fruit_hub/reuseables.dart';

class AddToBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFFFA451),
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 32,
                  width: 80,
                  margin: EdgeInsets.only(left: 10, right: 270, top: 25),
                  padding: EdgeInsets.only(left: 4, right: 4),
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
                width: 327,
                height: 176,
                margin: EdgeInsets.only(bottom: 27),
                child: fruitHubImage(theImage: "break55"),
              ),
              Container(
                padding: EdgeInsets.only(top: 35),
              
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
                        padding: EdgeInsets.only(left: 25),
                        child: fruitHubText(
                          "Quinoa Fruit Salad",
                          32,
                          Color(0xff27214D),
                        )),
                   
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xff333333),
                          size: 35,
                        ),
                        SizedBox(
                          width: 25,
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
                          width: 100,
                        ),
                        fruitHubImage(
                            theImage: "newnaira", imageColor: Colors.black),
                        
                        fruitHubText("10,000", 24, Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          children: [
                            fruitHubText(
                                "One Pack Contains:", 20, Color(0xff27214D)),
                            Container(
                              child: fruitHubImage(
                                theImage: "longline",
                                imageColor: Color(0xffFFA451),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        fruitHubText(
                            "Red Quinoa, Lime, Honey, Blueberries, Strawberries, \nMango, Fresh mint.",
                            16,
                            Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        fruitHubText(
                            "If you are looking for a new fruit salad to eat today, \nquinoa is the perfect brunch for you. make",
                            14,
                            Color(0xff27214D))
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0XFFFFA451),
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderList()));
                          },
                          child: Container(
                            height: 56,
                            width: 230,
                            margin: EdgeInsets.only(bottom: 12),
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
