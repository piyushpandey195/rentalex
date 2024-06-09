import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/utils/color/colors.dart';

import 'mobile_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
      children: [

          const Spacer(),

          Center(
              child: Image.asset(
            "assets/images/logologin.png",
            scale: 2,
          )),

          const Spacer(),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "Ready To",
                      style: TextStyle(
                          fontSize: 18, color: Colors.black, letterSpacing: .6)),
                  TextSpan(
                      text: "Explore?",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .6,
                        fontSize: 18,
                      ))
                ],
              ),
            ),
          ),

          const SizedBox(height: 20.0,),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLoginScreen()));
            },
            child: Container(
              height: 48,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [buttoncolor,buttoncolor2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

               Image.asset("assets/images/email.png",
               scale: 2,),

                const SizedBox(width: 10),

                Text('Continue With Mobile',
                style: GoogleFonts.roboto(color: whitecolor,
                fontSize: 16,
                fontWeight: FontWeight.w400),)

              ],),
            ),
          ),

        const SizedBox(height: 20.0,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/google.png",
              scale: 2,),

            const SizedBox(width: 10),

            Text('Continue With Google ',
              style: GoogleFonts.roboto(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),),
            const SizedBox(width: 10),

          ],),

        const SizedBox(height: 20.0,),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/facebook.png",
              scale: 2,),

            const SizedBox(width: 10),

            Text('Continue With Facebook',
              style: GoogleFonts.roboto(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),)

          ],),

         const SizedBox(height:70,),
        
        Text("If You Continue, You Are Accepting\n RENTALEX Terms And Aonditional An Privacy Policy",
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
          fontSize: 12,
          fontWeight: FontWeight.w400
        ),)


      ],
    ),
        ));
  }
}
