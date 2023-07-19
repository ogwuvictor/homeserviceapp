import 'package:flutter/material.dart';
import 'package:homeserviceapp/screens/loginscreen.dart';
import 'package:homeserviceapp/screens/phonenumberscreen.dart';
import 'package:nb_utils/nb_utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController Username = TextEditingController();
  TextEditingController email = TextEditingController();
   TextEditingController phone = TextEditingController();
    TextEditingController password= TextEditingController();
     TextEditingController ConfirmPassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 40,left: 20),
               child: Row(
                 children: [
                   GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                     // Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen())));
                    },
                    child: Icon(Icons.arrow_back_ios)),
                 ],
               ),
             ),
             25.height,
             Center(child: Text("Sign Up",
             style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,
             color: Color(0xFF165069)),)),
             100.height,
        
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.USERNAME,
               controller: Username,
               decoration: InputDecoration(
                fillColor: Color(0xFFE5E5E5),
                filled: true,
                hintText:" Username",
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
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.EMAIL,
               controller: email,
               decoration: InputDecoration(
                fillColor: Color(0xFFE5E5E5),
                filled: true,
                 hintText:" E-mail",
                 hintStyle: TextStyle(color: Color(0xFF667080)),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
               30.height,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.PHONE,
               controller: phone,
               decoration: InputDecoration(
                fillColor: Color(0xFFE5E5E5),
                filled: true,
                 hintText:" Phone",
                 hintStyle: TextStyle(color: Color(0xFF667080)),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
               30.height,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.PASSWORD,
               controller: password,
               decoration: InputDecoration(
                fillColor: Color(0xFFE5E5E5),
                filled: true,
                 hintText:" Password",
                 hintStyle: TextStyle(color: Color(0xFF667080)),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
               30.height,
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: AppTextField(textFieldType: TextFieldType.PASSWORD,
               controller: ConfirmPassword,
               decoration: InputDecoration(
                fillColor: Color(0xFFE5E5E5),
                filled: true,
                 hintText:" ConfirmPassword",
                 hintStyle: TextStyle(color: Color(0xFF667080)),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(29),
                )
               ),
               ),
             ),
             40.height,
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => PhoneNumberScreen())));
                    },
                    child: Padding(
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
                                      "SIGN UP",style: TextStyle(
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