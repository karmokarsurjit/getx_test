import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/login/login_logic.dart';
import 'package:getx_test/routes/app_pages.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
    Widget build(BuildContext context){
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: const Color(0xff32302C),
        body: ListView(
          children: [
            const SizedBox(height: 50,),
            SvgPicture.asset('assets/images/messxp.svg', height: MediaQuery.of(context).size.height * .15,),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
              child: TextFormField(
                //key: _number,
                decoration: InputDecoration(
                  focusedBorder :OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF2C94C), width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF2C94C), width: 2,),
                  ),
                  labelText: "Phone number or Code",
                  labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (!GetUtils.isPhoneNumber(value!)){
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.00),
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder :OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF2C94C), width: 2,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF2C94C), width: 2,),
                  ),
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                validator: (value){
                  if(!GetUtils.isGreaterThan(8,10)){
                    return "Minimum 6 character and less then 10 !";
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Forget password",
                textAlign:  TextAlign.right,
                style:
                TextStyle(
                  fontSize: 15,
                  color: Color(0xffF2C94C),
                ),
              ),
            ),
      Padding(padding:EdgeInsets.symmetric(horizontal: 100.00),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF2C94C),
                    //ButtonStyle(
                    //backgroundColor: MaterialStatePropertyAll(Color(0xffF2C94C),
                    //),
                  ),
                  onPressed: () {
                    Get.toNamed(AppPages.DASHBOARD);
                    //Get.offAllNamed(AppPages.DASHBOARD);
                  },
                  child:
                  Text('Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,fontSize: 15.0),)
              ),
            ),

            Row(children: [
              SizedBox(width: 120, height: 50),
                  Text("Don't have an account?",
                    style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                TextButton(
                  onPressed: (){
                    Get.toNamed(AppPages.REGISTER);
                  },
                  child: Text("Register Now",
                      style:
                      TextStyle(
                        fontSize: 15,
                        color: Color(0xffF2C94C),
                      ),
                    ),
                ),
            ],
            ),
            SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset('assets/images/i_button.svg', height: MediaQuery.of(context).size.height * .03,
                    alignment: Alignment.bottomRight),
            ),
          ],
        ),
    );
  }
}

class LoginPageMobileLandscape extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;
  const LoginPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Container();
  }
}






//   @override
//   Widget build(BuildContext context) {
//     Get.find<LoginLogic>();
//     //final CheckController ctrl = Get.put(CheckController());
//
//     //var _number;
//     return Scaffold(
//         backgroundColor: const Color(0xff32302C),
//         body: ListView(
//           children: [
//             const SizedBox(height: 50,),
//             SvgPicture.asset('assets/images/messxp.svg', height: MediaQuery.of(context).size.height * .15,),
//             const SizedBox(height: 50,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
//               child: TextFormField(
//                 //key: _number,
//                 decoration: InputDecoration(
//                   focusedBorder :OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color(0xffF2C94C), width: 2,),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color(0xffF2C94C), width: 2,),
//                   ),
//                   labelText: "Phone number or Code",
//                   labelStyle: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 15.0
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (!GetUtils.isPhoneNumber(value!)){
//                     return 'Please enter a valid number';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.00),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   focusedBorder :OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color(0xffF2C94C), width: 2,),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color(0xffF2C94C), width: 2,),
//                   ),
//                   labelText: "Password",
//                   labelStyle: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 15.0,
//                   ),
//                 ),
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: true,
//                 validator: (value){
//                   if(!GetUtils.isGreaterThan(8,10)){
//                     return "Minimum 6 character and less then 10 !";
//                   }
//                   else{
//                     return null;
//                   }
//                 },
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text("Forget password",
//                 textAlign:  TextAlign.right,
//                 style:
//                 TextStyle(
//                   fontSize: 15,
//                   color: Color(0xffF2C94C),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const SizedBox(width: 80,),
//                   Obx(() =>
//                       Checkbox(
//                           checkColor: const Color(0xffF2C94C),
//                           activeColor: const Color(0xffF2C94C),
//                           shape: const CircleBorder(
//                             side: BorderSide(color: Color(0xffF2C94C),),
//                           ),
//                           value: ctrl.checkBool1.value,
//                           onChanged: (value){
//                             ctrl.checkBool1.value = !ctrl.checkBool1.value;
//                             if(ctrl.checkBool2 != false.obs){
//                               ctrl.checkBool1.value = !ctrl.checkBool1.value;
//                             }
//                           }
//                       ),
//                   ),
//                   SvgPicture.asset('assets/images/chess_king_icon.svg'),
//                   const SizedBox(width: 10,),
//                   const Text("Manager",style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                   ),
//                   const SizedBox(width: 40,),
//                   Obx(() =>
//                       Checkbox(
//                           checkColor: const Color(0xffF2C94C),
//                           activeColor: const Color(0xffF2C94C),
//                           shape: const CircleBorder(
//                             side: BorderSide(color: Color(0xffF2C94C),),
//                           ),
//                           value: ctrl.checkBool2.value,
//                           onChanged: (value){
//                             ctrl.checkBool2.value = !ctrl.checkBool2.value;
//                             if(ctrl.checkBool1 != false.obs){
//                               ctrl.checkBool2.value = !ctrl.checkBool2.value;
//                             }
//                           }
//                       ),
//                   ),
//                   const SizedBox(width: 10,),
//                   SvgPicture.asset('assets/images/solid_user_icon.svg'),
//                   const SizedBox(width: 10,),
//                   const Text("Member",style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20,),
//
//             Padding(padding:EdgeInsets.symmetric(horizontal: 100.00),
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xffF2C94C),
//                     //ButtonStyle(
//                     //backgroundColor: MaterialStatePropertyAll(Color(0xffF2C94C),
//                     //),
//                   ),
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
//                   },
//                   child:
//                   Text('Log In',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.black,fontSize: 15.0),)
//               ),
//             ),
//
//             Row(children: [
//               SizedBox(width: 120, height: 50),
//                   Text("Don't have an account?",
//                     style:
//                     TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                     ),
//                   ),
//                 TextButton(
//                   onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
//                   },
//                   child: Text("Register Now",
//                       style:
//                       TextStyle(
//                         fontSize: 15,
//                         color: Color(0xffF2C94C),
//                       ),
//                     ),
//                 ),
//             ],
//             ),
//             SizedBox(height: 55),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: SvgPicture.asset('assets/images/i_button.svg', height: MediaQuery.of(context).size.height * .03,
//                     alignment: Alignment.bottomRight),
//             ),
//           ],
//         )
//     );
//   }
// }
//
// class LoginPageMobileLandscape extends StatelessWidget {
//   final SizingInformation? sizingInformation;
//   const LoginPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
// class CheckController extends GetxController{
//   var checkBool1 = false.obs;
//   var checkBool2 = false.obs;
// }