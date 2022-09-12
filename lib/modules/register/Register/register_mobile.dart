import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const RegisterPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff32302C),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(height: 20,),
              Image.asset('assets/images/RegIcon.png', height: MediaQuery.of(context).size.height * .15,),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.00),
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
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.00),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.00),
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
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.00),
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
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.00),
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

              const SizedBox(height: 10,),
          const Padding(padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 30.00),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xffF2C94C)
                  ),
                ),
                onPressed: null,
                child:
                Text('Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 15.0),)
            ),
          ),
              Row(children: const [
                SizedBox(width: 100),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Already have an account?",
                    //textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Login Now",
                    //textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 15,
                      color: Color(0xffF2C94C),
                    ),
                  ),
                ),
              ],
                ),
            ],
          ),
        )
    );
  }
}

class RegisterPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const RegisterPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}