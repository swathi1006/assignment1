import 'package:flutter/material.dart';
import 'package:assignment1/screens/loginPage.dart';
import 'package:assignment1/screens/registrationPage.dart';
import 'package:assignment1/utils/mycolors.dart';
import 'package:assignment1/utils/textThemes.dart';


class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black12.withOpacity(.5)),
          decoration: const BoxDecoration(

            image: DecorationImage(

                fit: BoxFit.cover,
                image: AssetImage(
                "assets/images/pbk.png"))
          ),
        child:  Center(
          child: Column(
            children: [
                  const SizedBox(height: 150),

                  Text("The best \n app for \n your plants",
                  style: MyTextThemes.tHeading ,),

                  const SizedBox(height: 150,),

                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration_Page()));
                  },
                  color: Colors.white,
                  minWidth: 350,
                    height: 55,
                  shape: const StadiumBorder(),
                  child: Text("Sign up",
                  style: MyTextThemes.bodyTextStyle2,),
                  ),

                  const SizedBox(height: 20,),

              MaterialButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
                color: MyColors.buttonColor,
                minWidth: 350,
                height: 55,
                shape: const StadiumBorder(),
                child: Text("Login",
                  style: MyTextThemes.bodyTextStyle1,),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
