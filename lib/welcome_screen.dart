import 'package:flutter/material.dart';
import 'package:fruit_hub/authentication.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
                  width: getProportionateScreenWidth(200),
                  margin:
                      EdgeInsets.only(bottom: getProportionateScreenHeight(38)),
                  padding: EdgeInsets.only(
                      bottom: getProportionateScreenHeight(23),
                      top: getProportionateScreenHeight(10)),
                  color: Color(0xFFFFA451),
                  child: fruitHubImage2(theImage: "basket44"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: getProportionateScreenHeight(5)),
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(25),
                      right: getProportionateScreenWidth(70),
                      bottom: getProportionateScreenHeight(8),
                      top: getProportionateScreenHeight(13)),
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
                      SizedBox(height: getProportionateScreenHeight(8)),
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
                      width: getProportionateScreenWidth(15),
                    ),
                    Container(
                      height: getProportionateScreenHeight(55),
                      width: getProportionateScreenWidth(327),
                      margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(25),
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
                height: getProportionateScreenHeight(80),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
