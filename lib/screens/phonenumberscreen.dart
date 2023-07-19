import 'package:flutter/material.dart';
import 'package:homeserviceapp/screens/signupscreen.dart';
import 'package:homeserviceapp/screens/verificationscreen.dart';
import 'package:nb_utils/nb_utils.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40,right: 328),
                child: GestureDetector
                (
                  onTap: () {
                    Navigator.pop(context);
                  //  Navigator.push(context, MaterialPageRoute(builder: ((context) => SignupScreen())));
                  },
                  child: Icon(Icons.arrow_back_ios)),
              ),
              20.height,
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  Column(
                    children: [
                       20.height,
                      //   Image.asset("assets/images/wait.png")
                      Padding(
               padding: const EdgeInsets.only(right: 40),
               child: Image(image: AssetImage("assets/images/wait.png",
               ),
               width: 390,),
                      )
                    ],
                  )
                ],
               ),
             ),
             30.height,
             Row(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Enter your registered phone number to login",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF667080),
                    ),
                    ),
                  )
              ],
             ),
        
             40.height,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.NUMBER,
               controller: number,
               decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                  hintText:" Phone Number",
                 hintStyle: TextStyle(color: Color(0xFF667080)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
        
             29.height,
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => PinCodeVerificationScreen())));
                      },
                      child: 
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                                    height: 70,
                                    width: 290,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF165069),
                                      borderRadius: BorderRadius.circular(39)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "REGISTER",style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}