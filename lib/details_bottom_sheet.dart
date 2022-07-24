import 'package:flutter/material.dart';
import 'package:fruit_hub/input_card_details.dart';
import 'package:fruit_hub/order_complete.dart';
import 'package:fruit_hub/reuseables.dart';
import 'package:fruit_hub/size_config.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Container(
          height: getProportionateScreenHeight(375),
          width: getProportionateScreenWidth(450),
          padding: EdgeInsets.only(
              top: getProportionateScreenHeight(30),
              right: getProportionateScreenWidth(10),
              left: getProportionateScreenWidth(20),
              bottom: getProportionateScreenHeight(5)),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fruitHubText("Delivery address", 20, Color(0xff27214D)),
              Container(
                height: getProportionateScreenHeight(56),
                width: getProportionateScreenWidth(350),
                margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(20),
                    bottom: getProportionateScreenHeight(15),
                    right: getProportionateScreenWidth(10)),
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(10),
                    right: getProportionateScreenWidth(10),
                    left: getProportionateScreenWidth(20),
                    bottom: getProportionateScreenHeight(10)),
                decoration: BoxDecoration(
                    color: Color(0xffF3F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: fruitHubText(
                    "10th avenue, Lekki, Lagos State", 20, Color(0xffC2BDBD)),
              ),
              fruitHubText("Number we can call", 20, Color(0xff27214D)),
              Container(
                height: getProportionateScreenHeight(56),
                width: getProportionateScreenWidth(350),
                margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(20),
                    bottom: getProportionateScreenHeight(30),
                    right: getProportionateScreenWidth(10)),
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(10),
                    right: getProportionateScreenWidth(10),
                    left: getProportionateScreenWidth(20),
                    bottom: getProportionateScreenHeight(10)),
                decoration: BoxDecoration(
                    color: Color(0xffF3F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: fruitHubText("09090605708", 20, Color(0xffC2BDBD)),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    height: getProportionateScreenHeight(60),
                    width: getProportionateScreenWidth(120),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderComplete()));
                      },
                      child: fruitHubText(
                        "Pay on delivery",
                        16,
                        Color(0xffFFA451),
                      ),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                              color: Color(0xffFFA451),
                              width: getProportionateScreenWidth(1),
                              style: BorderStyle.solid))),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(20)),
                      height: getProportionateScreenHeight(60),
                      width: getProportionateScreenWidth(120),
                      child: OutlinedButton(
                        onPressed: () {
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
                                child: BottomSheet2(),
                              ),
                            ),
                          );
                        },
                        child: fruitHubText(
                          "Pay with card",
                          16,
                          Color(0xffFFA451),
                        ),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: Color(0xffFFA451),
                                width: getProportionateScreenWidth(1),
                                style: BorderStyle.solid))),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(-65),
          left: getProportionateScreenWidth(162),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: getProportionateScreenHeight(45),
              width: getProportionateScreenWidth(45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Colors.white),
              child: Icon(
                Icons.clear,
                size: getProportionateScreenWidth(28),
                color: Color(0xff070648),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
