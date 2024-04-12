import 'package:assignment1/screens/loginPage.dart';
import 'package:assignment1/screens/splashPage.dart';
import 'package:assignment1/utils/textThemes.dart';
import 'package:assignment1/utils/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:math' as math;

class Registration_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 100,
          toolbarHeight: 40,
          leading:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey.shade50,
                    child:  IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashPage()));
                    },
              icon: const Icon(Icons.arrow_back_ios_new_rounded) ),
                  ),
          )) ,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
                    child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 22.0,bottom: 22.0),



            child: Column(
              children: [

            
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Register",
                  style: MyTextThemes.textHeading,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create your new account",
                  style: MyTextThemes.bodyTextStyle3,
                ),
                const SizedBox(
                  height: 50,
                ),
                 TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                      prefixIcon: const Icon(Icons.person),
                      border: InputBorder.none,
                      labelText: "Full Name"
                  ) ,),
                const SizedBox(height: 20,),
                 TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                      prefixIcon: const Icon(Icons.mail),
                      border: InputBorder.none,
                      labelText: "Email"
                  ) ,),
                const SizedBox(height: 20,),
            
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: ".",
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      labelText: "Password"
                  ),
                ),
                const SizedBox(height: 20,),
            
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: ".",
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      labelText: "Confirm Password"
                  ),
                ),
            
             /*   RichText(text: const TextSpan(
                  text: "By signing yo agree to our Team of use \n and privacy notice",
                  style:  TextStyle(
                      fontSize: 15,
                      color: Colors.black54),
                )),
            
              */
            
                const SizedBox(height: 80,),
            
                MaterialButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage))
                },
                  color: MyColors.buttonColor,
                  minWidth: 350,
                  height: 55,
                  shape: const StadiumBorder(),
                  child: Text("Sign up",
                    style: MyTextThemes.bodyTextStyle1,),
                ),
            
                const SizedBox(height: 20,),
            
                RichText(text:   TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54),
                    children: [
                      TextSpan(
                           recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                              },
            
                          text: "Login",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black
                          )
                      )
                    ])),
            
              ],
            ),
                    ),
                  ),
          )),
    );
  }
}
