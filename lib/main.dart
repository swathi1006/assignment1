import 'package:assignment1/screens/home1.dart';
import 'package:assignment1/screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/screens/splashPage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  /// to create widget tree
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
     //home: SplashPage(),
      //  home: LoginPage(),
      //home: Registration_Page(),
     home: Home1(),

    );
  }

}