import 'package:flutter/material.dart';
import 'package:fruit_hub/details_Bottom_Sheet.dart';
import 'package:fruit_hub/reuseables.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFFFA451),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 32,
                      width: 85,
                      margin: EdgeInsets.only(left: 20, right: 35, top: 47),
                      padding: EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                          Text(
                            "Go back  ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff27214D),
                                letterSpacing: -1,
                                fontFamily: "Brandon Grotesque"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 35, top: 47),
                    child: Text(
                      "My Basket",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          letterSpacing: -1,
                          fontFamily: "Brandon Grotesque"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
               
                // height: 615,
                padding: EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Color(0XFFE5E5E5),
                ),
                child: Column(
                  children: [
                    foodlist("images/salad1.png", Color(0XFFFFFAEB),
                        "Quinoa fruit salad", 2, " 20,000"),
                    foodlist("images/salad2.png", Color(0XFFF1EFF6),
                        "Melon fruit salad", 2, " 20,000"),
                    foodlist("images/salad3.png", Color(0XFFFEF0F0),
                        "Tropical fruit salad", 2, " 20,000"),
                    SizedBox(
                      height: 210,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  letterSpacing: -1,
                                  fontFamily: "Brandon Grotesque"),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                fruitHubImage(
                                    theImage: "big_naira",
                                    imageColor: Color(0XFF27214D)),
                                Text("60,000",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0XFF27214D),
                                        letterSpacing: -1,
                                        fontFamily: "Brandon Grotesque")),
                              ],
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => SingleChildScrollView(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffE5E5E5),
                                  ),
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: BottomSheet1(),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 25, bottom: 10),
                            padding: EdgeInsets.all(15),
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0XFFFFA451),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text("Checkout",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                      fontFamily: "Brandon Grotesque")),
                            ),
                          ),
                        )
                      ],
                    ),
                    // Spacer()
                    // SizedBox(height: 10,),
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
