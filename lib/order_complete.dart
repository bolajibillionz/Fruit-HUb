import 'package:flutter/material.dart';
import 'package:fruit_hub/add_to_basket.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/track_order.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.only(top: 95, bottom: 35),
                  height: 164,
                  width: 164,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff4CD964), width: 2),
                      color: Color(0xffE0FFE5),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Container(
                      margin: EdgeInsets.all(30),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff4CD964),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: fruitHubImage(theImage: "check")),
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
                height: 10,
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
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrackOrder()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    height: 56,
                    width: 133,
                    decoration: BoxDecoration(

                        // border: Border.all(color: Color(0xff4CD964), width: 2),
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
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    height: 56,
                    width: 181,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFA451), width: 2),
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
