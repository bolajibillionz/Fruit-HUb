import 'package:flutter/material.dart';
import 'package:fruit_hub/input_card_details.dart';
import 'package:fruit_hub/order_complete.dart';
import 'package:fruit_hub/reuseables.dart';


class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 375,
          width: 450,
          padding: EdgeInsets.only(top: 30, right: 10, left: 20, bottom: 5),
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
                height: 56,
                width: 350,
                margin: EdgeInsets.only(top: 20, bottom: 15, right: 10),
                padding:
                    EdgeInsets.only(top: 10, right: 10, left: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xffF3F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: fruitHubText(
                    "10th avenue, Lekki, Lagos State", 20, Color(0xffC2BDBD)),
              ),
              fruitHubText("Number we can call", 20, Color(0xff27214D)),
              Container(
                height: 56,
                width: 350,
                margin: EdgeInsets.only(top: 20, bottom: 30, right: 10),
                padding:
                    EdgeInsets.only(top: 10, right: 10, left: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xffF3F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: fruitHubText("09090605708", 20, Color(0xffC2BDBD)),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    height: 60,
                    width: 120,
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
                              width: 1,
                              style: BorderStyle.solid))),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 60,
                      width: 120,
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
                                width: 1,
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
          top: -65,
          left: 162,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  color: Colors.white),
              child: Icon(
                Icons.clear,
                size: 28,
                color: Color(0xff070648),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
