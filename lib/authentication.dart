import 'package:flutter/material.dart';
import 'package:fruit_hub/Home_screen_one.dart';
import 'package:fruit_hub/reuseables.dart';


class Authentication extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFFFA451),
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: 200,
                  margin: EdgeInsets.only(bottom: 38),
                  padding: EdgeInsets.only(bottom: 23, top: 10),
                  color: Color(0xFFFFA451),
                  child: fruitHubImage(theImage: "basket_33")
                 
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: fruitHubText("What is your firstname?", 20,
                              Color(0XFF27214D))),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            padding: EdgeInsets.only(left: 15, top: 12),
                            height: 55,
                            width: 327,
                            decoration: BoxDecoration(
                              color: Color(0XFFF3F1F1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: fruitHubText("Tony", 20, Color(0xFFC2BDBD)),
                          ),
                        ],
                        //
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 55,
                  width: 327,
                  margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Color(0XFFFFA451),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Center(
                      child: fruitHubText("Start Ordering", 16, Colors.white)),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
