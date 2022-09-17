import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/register/register_logic.dart';
import 'package:getx_test/routes/app_pages.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterPageMobilePortrait extends GetView<RegisterLogic> {
  final SizingInformation? sizingInformation;
  const RegisterPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Scaffold(
      backgroundColor: const Color(0xff32302C),
        body: ListView(
          children: [
            const SizedBox(height: 50,),
            SvgPicture.asset('assets/images/messxp.svg', height: MediaQuery.of(context).size.height * .15,),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
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
                  labelText: "Your name",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                keyboardType: TextInputType.name,
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
                  labelText: "Email",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
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
                  labelText: "Phone number",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                keyboardType: TextInputType.phone,
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.00),
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
                  labelText: "Confirm Password",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),

            Padding(padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 100.00),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color(0xffF2C94C)
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed(AppPages.DASHBOARD);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child:
                  Text('Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,fontSize: 15.0),)
              ),
            ),
            Row(children: [
              SizedBox(width: 120),
              Text("Already have an account?",
                  style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

              TextButton(
                onPressed: (){
                  Get.toNamed(AppPages.LOGIN);
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child:
                Text("Login Now",
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
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset('assets/images/i_button.svg', height: MediaQuery.of(context).size.height * .03,
                  alignment: Alignment.bottomRight),
            ),
          ],
        ),
    );
  }
}

class RegisterPageMobileLandscape extends GetView<RegisterLogic> {
  final SizingInformation? sizingInformation;
  const RegisterPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegisterLogic>();
    return Container();
  }
}