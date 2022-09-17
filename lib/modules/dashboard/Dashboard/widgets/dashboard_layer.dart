import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardLayer {
  static topLayer({SizingInformation? sizingInformation}) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Meal Rate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
      ),
      Stack(
        fit: StackFit.passthrough,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Column(
              children: const [
                Text("Last Month",
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                Text(" 76556",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                SizedBox(
                  height: 20,
                ),
                Text("Last Month",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                Text(" 76556",
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Text("Total Deposit ",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ],
            ),
          ),
          Container(
            height: 120,
            alignment: Alignment.center,
            foregroundDecoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 5,
                  color: Color.fromARGB(150, 242, 201, 76),
                  style: BorderStyle.solid),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 12,
                  color: Color.fromARGB(150, 242, 201, 76),
                  style: BorderStyle.solid),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                SvgPicture.asset('assets/images/mdi-currency-bdt.svg'),
                Text(
                  "48.00",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }

  static midLayer({SizingInformation? sizingInformation}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            elevation: 5,
            shadowColor: Colors.grey,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: const [
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Center(
                        child: Text(
                          '10\n Total Members',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Center(
                        child: Text(
                          '17\n Total Meals',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(height: 15),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Text(
                        '2347 \n Daily Expenses',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Text(
                        '6 \n Total Bazar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text("Upcoming events",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  "view all",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  static bottomLayer({SizingInformation? sizingInformation,tabData,PageController? controller}){
    final PageController pageController = PageController();

    return TabBarView(
        children: [
          Container(

          )
        ],
    );

  }

}
