import 'package:flutter/material.dart';
import 'package:fruit_hub/authentication.dart';
import 'package:fruit_hub/reuseables.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                  child: fruitHubImage(theImage: "basket44"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  padding:
                      EdgeInsets.only(left: 25, right: 70, bottom: 8, top: 13),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 0),
                          child: fruitHubText(
                              "Get The Freshest Fruit Salad Combo",
                              20,
                              Color(0XFF27214D))),
                      SizedBox(height: 8),
                      Container(
                          child: fruitHubText(
                              "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                              16,
                              Color(0xFF5D577E))),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Authentication()));
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 55,
                      width: 327,
                      margin: EdgeInsets.only(
                        top: 25,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFFFFA451),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Center(
                          child:
                              fruitHubText("Let’s Continue", 16, Colors.white)),
                    ),
                  ],
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
