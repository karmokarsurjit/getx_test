import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../dashboard/dashboard_view.dart';
import '../../register/register_view.dart';

class LoginPageMobilePortrait extends StatelessWidget {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<LoginLogic>();
    final CheckController ctrl = Get.put(CheckController());

    //var _number;
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
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Please enter your number';
                  }
                  return null;
                },
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
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.00),
              child: TextField(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Obx(() =>
                      Checkbox(
                          checkColor: Colors.white,
                          activeColor: const Color(0xffF2C94C),
                          shape: const CircleBorder(),
                          value: ctrl.checkBool1.value,
                          onChanged: (value){
                            ctrl.checkBool1.value = !ctrl.checkBool1.value;
                          }
                      ),
                  ),
                  SvgPicture.asset('assets/images/chess_king_icon.svg'),
                  const SizedBox(width: 10,),
                  const Text("Manager",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                  const SizedBox(width: 40,),
                  Obx(() =>
                      Checkbox(

                          shape: const CircleBorder(
                            side: BorderSide(color: Colors.white),
                          ),
                          value: ctrl.checkBool2.value,
                          onChanged: (value){
                            ctrl.checkBool2.value = !ctrl.checkBool2.value;

                          }
                      ),
                  ),
                  const SizedBox(width: 10,),
                  SvgPicture.asset('assets/images/solid_user_icon.svg'),
                  const SizedBox(width: 10,),
                  const Text("Member",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),

            Padding(padding:EdgeInsets.symmetric(horizontal: 100.00),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF2C94C),
                    //ButtonStyle(
                    //backgroundColor: MaterialStatePropertyAll(Color(0xffF2C94C),
                    //),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                  },
                  child:
                  Text('Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,fontSize: 15.0),)
              ),
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Don't have an account?",
                  textAlign:  TextAlign.center,
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Register Now",
                    textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 15,
                      color: Color(0xffF2C94C),
                    ),
                  ),
                ),
              ),
            ],
            ),
          ],
        )
    );
  }
}

class LoginPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const LoginPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class CheckController extends GetxController{
  var checkBool1 = false.obs;
  var checkBool2 = false.obs;
}