
import 'package:flutter/material.dart';
import 'package:homeserviceapp/screens/signupscreen.dart';
import 'package:homeserviceapp/widget/homewidget.dart';
// import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/nb_utils.dart';

import 'homescreen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             Container(
              width: 400,
              height: 230,
              decoration: BoxDecoration(
                color: Color(0xFF165069),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120))
              ),
             // child: Image.asset("assets/images/Yoga.png"),
             child: Image(image: AssetImage("assets/images/yoga.png")),
             ),
             
             30.height,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.EMAIL,
               controller: email,
               decoration: InputDecoration(
                  fillColor: Color(0xFFE5E5E5),
                  filled: true,
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Color(0xFF667080)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(29)
                  )
               ),
               ),
             ),
        
             30.height,
             Padding(
               padding: const EdgeInsets.only(right: 30,left: 30),
               child: AppTextField(textFieldType: TextFieldType.PASSWORD,
               controller: password,
               decoration: InputDecoration(
                fillColor:  Color(0xFFE5E5E5),
                filled: true,
                hintText: "Password",
                hintStyle: TextStyle(color: Color(0xFF667080)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
             20.height,
             Padding(
               padding: const EdgeInsets.only(left: 230),
               child: Text("forgot password?",style: TextStyle(color: Color(0xFF667080)),),
             ),
             40.height,
             Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        onTap: () {
                          
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeWidget())));
                          },
                          child: Container(
                            height: 70,
                            width: 290,
                            decoration: BoxDecoration(
                              color: Color(0xFF165069),
                              borderRadius: BorderRadius.circular(39)
                            ),
                            
                            child: Center(
                              child: Text(
                                "LOGIN",style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
             ),
        
             20.height,
            //  Padding(
            //    padding: const EdgeInsets.only(left: 30,right: 270),
            //    child: Divider(
            //     color: Color(0xFF667080),
            //    ),
            //  ),
             10.width,
             Text("OR",
             style: TextStyle(color: Color(0xFF667080),
             fontWeight: FontWeight.w500),
             ),
             20.width,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: Divider(
                  color: Color(0xFF667080),
                 ),
             ),
             27.height,

             Row(
               children: [
                Padding(
                  padding: const EdgeInsets.only(left: 52),
                  child: Image.asset("assets/images/Facebook.png"),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 52),
                   child: Image.asset("assets/images/GooglePlus.png"),
                 ),
                  Padding(
                   padding: const EdgeInsets.only(left: 52),
                   child: Image.asset("assets/images/Twitter.png"),
                 ),
               
               ],
             ),
                20.height,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text("Don't have an account?",
                      style: TextStyle(color: Color(0xFF667080)),),
                    ),
                    1.width,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => SignupScreen())));
                      },
                      child: Text("SignUp",
                      style: TextStyle(
                        color: Color(0xFF667080),
                        fontWeight: FontWeight.w300,
                      ),),
                    )
                  ],
                )
             
            ],
          ),
        ),
      ),
    );
  }
}