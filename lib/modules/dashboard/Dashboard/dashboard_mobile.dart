import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dashboard"),
        titleTextStyle: TextStyle(color: Colors.grey),
        centerTitle: true,
        //elevation: 3.0,
        //shadowColor: Colors.black,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text("Meal Rate",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Stack(
                fit: StackFit.passthrough,
                //alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                    child: Column(
                      children: [
                        Text("Last Month", style: TextStyle(color: Colors.grey,fontSize: 10)),
                        Text(" 76556", style: TextStyle(color: Colors.grey,fontSize: 15)),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 5,color: Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 10,color: Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
                    ),
                    child:Column(
                      children: [
                        SizedBox(height: 10),
                        SvgPicture.asset('assets/images/mdi-currency-bdt.svg'),
                        Text("48.00",style: TextStyle(fontSize: 22,color: Colors.grey,),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Divider(thickness: 5.0,color: Colors.red, ),
        ],
      ),
      bottomNavigationBar:Row(
          children: [
            Text("MEMBERS"),
            Text("BAZARLIST"),
            Text("#MEAL"),
          ],
        ),
    );
  }
}

class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}