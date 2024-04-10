import 'package:assignment1/screens/registrationPage.dart';
import 'package:assignment1/screens/splashPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//import 'package:assignment1/utils/const_snackbar.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:assignment1/screens/registration.dart';
import 'package:assignment1/utils/mycolors.dart';
import 'package:assignment1/utils/textThemes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(00),
        ),
        //  leadingWidth: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/pbk.png"),
            fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(75),
              bottomRight: Radius.circular(120)
            )
          ),
        ),



        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey.shade50,
          child: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashPage()));
          },
              icon: const Icon(Icons.arrow_back_ios_new_rounded) ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(

            child: Center(
              child: Column(
                children: [
                   const SizedBox(height: 30),
                  Text("Welcome Back",
                    style: MyTextThemes.textHeading,),

                  const SizedBox(height: 10,),

                  Text("Login to your account",
                    style: MyTextThemes.bodyTextStyle3,),
                  const SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 15.0, bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blueGrey.shade50,
                          prefixIcon: const Icon(Icons.person),
                          border: InputBorder.none,
                          labelText: "Email"
                      ),),
                  ),

                  const SizedBox(height: 0.5,),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 15.0, bottom: 5),
                    child: TextFormField(
                      obscureText: true,
                      obscuringCharacter: ".",
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blueGrey.shade50,
                          prefixIcon: const Icon(Icons.lock),
                          border: InputBorder.none,
                          labelText: "Password"
                      ),

                    ),

                  ),
                  //  const SizedBox(height: 60,),

                  RichText(text: TextSpan(

                      text: "Remember me        \t\t\t\t      ",
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54),
                      children: [
                        TextSpan(
                          /*   recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegistrationPage()));
                            },

                        */
                            text: "         Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.teal.shade900
                            )
                        )
                      ])),

                  const SizedBox(height: 110,),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage))
                    },
                    color: MyColors.buttonColor,
                    minWidth: 350,
                    height: 55,
                    shape: const StadiumBorder(),
                    child: Text("Login",
                      style: MyTextThemes.bodyTextStyle1,),
                  ),

                  const SizedBox(height: 15,),

                  RichText(text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54),
                      children: [
                        TextSpan(
                             recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Registration_Page()));
                          },


                            text: "SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.teal.shade900
                            )
                        )
                      ])),

                ],
              ),
            ),
          )),
    );
  }
}
