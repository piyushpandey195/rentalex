import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/login/login.dart';
import 'package:rentalex/screens/profile_before_login/widget/listtile.dart';
import 'package:rentalex/utils/color/colors.dart';

class ProfileBeforeLogin extends StatefulWidget {
  const ProfileBeforeLogin({Key? key}) : super(key: key);

  @override
  State<ProfileBeforeLogin> createState() => _ProfileBeforeLoginState();
}

class _ProfileBeforeLoginState extends State<ProfileBeforeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(137.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
          height:137,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                   colors:[ appbarcolor1,appbarcolor2,],
                  begin: Alignment.topCenter,
                  end: Alignment.centerLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 22,
                        backgroundImage: AssetImage("assets/images/Ellipse.png"),),

                        const SizedBox(width: 10,),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hey Rahul,",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15
                              ),),

                            const SizedBox(height:5),

                            Text("How's Your Day Going ,",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 12,
                                //height: 14
                              ),),
                          ],
                        ),
                      ],
                    ),



                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                        },
                        child: Container(
                           width: 72,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child:  Center(
                            child: Text("Login",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 12,
                                //height: 14
                              ),),
                          ),
                        ),
                      )
                  ],),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,
                top: 115),
                child: Container(
                height: 42,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0
                )]
                ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                         Image.asset("assets/images/location.png",
                         scale: 2,),
                        const SizedBox(width: 5,),
                        Text("H-150 sector 63  Noida",
                          style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  ),
              ),
              ),

            ],
          ),
        ),

      ),
      
      body: const ListTileWidget(),
    );
  }
}
