import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rentalex/utils/color/colors.dart';
import '../on_boarding/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  redirect(){
    Future.delayed(  Duration(seconds : 4),()=>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }

  @override
  void initState() {
    redirect();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(),
        SizedBox(
              width: 156,
            child: Image.asset("assets/images/splash.png")),
        Spacer(),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
          },
          child: Container(
            height: 48,
            width: 168,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                buttoncolor,buttoncolor2,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(
              child: Text("Let's Start",style: TextStyle(
                color: whitecolor,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),),
            ),
          ),
        ),
        SizedBox(height:50,)
      ],
    ),));

  }
}
