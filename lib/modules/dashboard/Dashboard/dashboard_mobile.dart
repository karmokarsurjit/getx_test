import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/dashboard/Dashboard/widgets/dashboard_layer.dart';
import 'package:getx_test/modules/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);
  final int _bottomIndex = 0;

  var tabData = [
    "All"
    "Monthly Feast"
  ];

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Dashboard"),
        titleTextStyle: const TextStyle(color: Colors.grey),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DashboardLayer.topLayer(sizingInformation: sizingInformation),
          DashboardLayer.midLayer(sizingInformation: sizingInformation),
          DashboardLayer.bottomLayer(sizingInformation: sizingInformation,tabData: tabData),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
      currentIndex: _bottomIndex,
      iconSize: 1.0,
      items: const [
        BottomNavigationBarItem(
            label: "MEMBERS",
            icon: Icon(
              null,
            ),
        ),
        BottomNavigationBarItem(
          label: "BAZAR LIST",
          icon: Icon(
           null,
          ),
        ),
        BottomNavigationBarItem(
          label: "#MEAL",
          icon: Icon(
            null,
          ),
        ),
      ]
      ),
    );
  }
}

class DashboardPageMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}


// body: ListView(
// children: [
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 10),
// child: Text("Meal Rate",
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 20,
// color: Colors.grey,
// ),
// ),
// ),
// Stack(
// fit: StackFit.passthrough,
// //alignment: Alignment.center,
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
// child: Column(
// children: const [
// Text("Last Month", style: TextStyle(color: Colors.grey,fontSize: 10)),
// Text(" 76556", style: TextStyle(color: Colors.grey,fontSize: 15)),
// SizedBox(height: 20,),
// Text("Last Month", style: TextStyle(color: Colors.grey,fontSize: 12)),
// Text(" 76556", style: TextStyle(color: Colors.grey,fontSize: 18)),
// SizedBox(height: 20,),
// Text("Total Deposit ", style: TextStyle(color: Colors.black,fontSize: 20)),
// ],
// ),
// ),
// Container(
// height: 120,
// alignment: Alignment.center,
// foregroundDecoration: BoxDecoration(
// shape: BoxShape.circle,
// border: Border.all(width: 5,color: Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
// ),
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// border: Border.all(width: 12,color: Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
// ),
// child:Column(
// children: [
// SizedBox(height: 20),
// SvgPicture.asset('assets/images/mdi-currency-bdt.svg'),
// Text("48.00",style: TextStyle(fontSize: 28,color: Colors.grey,fontWeight: FontWeight.w100),),
// ],
// ),
// ),
// ],
// ),
// ]
// ),
// Container(
// width: 500,
// height: 200,
// padding: EdgeInsets.all(8.0),
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// color: Colors.white,
// elevation: 5,
// shadowColor: Colors.grey,
// child: Row(
// children: [
// SizedBox(width: 50,),
// Column(
// children: const [
// SizedBox(
// width: 190,
// height: 80,
// child: Center(
// child: Text('10\n Total Members',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.w100,
// ),
// ),
// ),
// ),
//
// SizedBox(
// width: 190,
// height: 80,
// child: Center(
// child: Text('17\n Total Meals',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.w100,
// ),
// ),
// ),
// ),
// ],
// ),
//
// Column(
// children: const [
// SizedBox(height: 15),
// SizedBox(
// width: 190,
// height: 80,
// child: Text('2347 \n Daily Expenses',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.w100,
// ),
// ),
// ),
//
// SizedBox(
// width: 190,
// height: 80,
// child: Text('6 \n Total Bazar',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.w100,
// ),
// ),
// ),
// ],
// )
// ],
// ),
// ),
// ),
//
// SizedBox(
// width: 500,
// height: 80,
// child: Row(
// children: const [
// SizedBox(width: 20,),
// Text("Upcoming events",style: TextStyle(
// fontSize: 20,
// color: Colors.black,
// fontWeight: FontWeight.normal,
// ),
// ),
// SizedBox(width: 220,),
// Text("view all",style: TextStyle(
// fontSize: 20,
// color: Colors.black,
// fontWeight: FontWeight.normal,
// ),
// ),
// ],
// )
// ),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Row(
// children: const [
// Text("All",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Monthly Feast",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Birthday",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Marriage Anniversary",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Eid",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Puja",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// SizedBox(width: 20,),
// Text("Others",style: TextStyle(
// color: Colors.grey,
// fontSize: 16,
// fontWeight: FontWeight.w100,
// ),
// ),
// ],
// ),
// ),
// ),
// SizedBox(
// height: 85,
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// color: Colors.white,
// elevation: 5,
// shadowColor: Colors.grey,
// child: Padding(
// padding: const EdgeInsets.all(20.0),
// child: Row(
// children: [
// SvgPicture.asset('assets/images/pan-of-food.svg'),
// SizedBox(width: 20),
// Column(
// children: const [
// Text("30 Nov, 2019   8.00pm",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 10,
// color: Colors.grey,
// )),
// SizedBox(height: 5,),
// Text("Monthly Feast on 30th November 2019",style: TextStyle(
// fontSize: 15,
// color: Colors.grey,
// )),
// ],
// ),
// SizedBox(width: 50,),
// Container(
// width: 90,
// height: 20,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(color: Colors.grey),
// ),
// child: Padding(
// padding: const EdgeInsets.all(1.0),
// child: Text("Remind Me",
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// )),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
//
// SizedBox(
// height: 85,
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// color: Colors.white,
// elevation: 5,
// shadowColor: Colors.grey,
// child: Padding(
// padding: const EdgeInsets.all(20.0),
// child: Row(
// children: [
// SvgPicture.asset('assets/images/pan-of-food.svg'),
// SizedBox(width: 20),
// Column(
// children: const [
// Text("30 Nov, 2019   8.00pm",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 10,
// color: Colors.grey,
// )),
// SizedBox(height: 5,),
// Text("Monthly Feast on 30th November 2019",style: TextStyle(
// fontSize: 15,
// color: Colors.grey,
// )),
// ],
// ),
// SizedBox(width: 50,),
// Container(
// width: 90,
// height: 20,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(color: Colors.grey),
// ),
// child: Padding(
// padding: const EdgeInsets.all(1.0),
// child: Text("Remind Me",
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// )),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
//
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Text("Gossip",
// style: TextStyle(
// color: Colors.black,
// fontSize: 18,
// fontWeight: FontWeight.w800,
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
// child: Text("all 4 pie chart should have a common filter based on month, quarter. also should have a print option pie chart need to be enhanced. full length court name, black color text",
// style: TextStyle(
// color: Colors.black,
// fontSize: 12,
// ),
// ),
// ),
// Row(
// children: const [
// SizedBox(width: 20,),
// Icon(Icons.favorite),
// SizedBox(width: 20,),
// Icon(Icons.chat_bubble_outline),
// SizedBox(width: 20,),
// Icon(Icons.share),
// SizedBox(height: 80),
// ],
// ),
// //Divider(thickness: 5.0,color: Colors.red, ),
// ],
// ),