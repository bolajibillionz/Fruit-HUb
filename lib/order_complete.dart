import 'package:flutter/material.dart';
import 'package:fruit_hub/add_to_basket.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';
import 'package:fruit_hub/track_order.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(95),
                      bottom: getProportionateScreenHeight(35)),
                  height: getProportionateScreenHeight(164),
                  width: getProportionateScreenWidth(164),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff4CD964),
                          width: getProportionateScreenWidth(2)),
                      color: Color(0xffE0FFE5),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Container(
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(30),
                          bottom: getProportionateScreenHeight(30),
                          right: getProportionateScreenWidth(30),
                          left: getProportionateScreenWidth(30)),
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(30),
                      decoration: BoxDecoration(
                          color: Color(0xff4CD964),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: fruitHubImage2(theImage: "check")),
                ),
              ),
              Center(
                child: fruitHubText(
                  "Congratulations!!!",
                  32,
                  Color(0xff27214D),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Center(
                  child: fruitHubText(
                "Your order have been taken and",
                20,
                Color(0xff27214D),
              )),
              Center(
                child:
                    fruitHubText("is being attended to", 20, Color(0xff27214D)),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrackOrder()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(30),
                        bottom: getProportionateScreenHeight(20)),
                    height: getProportionateScreenHeight(56),
                    width: getProportionateScreenWidth(133),
                    decoration: BoxDecoration(
                        color: Color(0xffFFA451),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: fruitHubText("Track order", 16, Colors.white)),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddToBasket()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: getProportionateScreenHeight(30), bottom: getProportionateScreenHeight(20)),
                    height: getProportionateScreenHeight(56),
                    width: getProportionateScreenWidth(181),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFA451), width: getProportionateScreenWidth(2)),
                        color: Color(0xffE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: fruitHubText(
                            "Continue shopping", 16, Color(0xffFFA451))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
