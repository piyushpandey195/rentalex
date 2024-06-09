import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

class AdsWidgetScreen extends StatefulWidget {
  const AdsWidgetScreen({Key? key}) : super(key: key);

  @override
  State<AdsWidgetScreen> createState() => _AdsWidgetScreenState();
}

class _AdsWidgetScreenState extends State<AdsWidgetScreen> {

  bool isvalue = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return   Expanded(
      child: SizedBox(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //image
                        Container(
                            height: 121,
                            width: width,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/adsimg.png",
                              fit: BoxFit.fill,)),

                        //detail
                        const SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lorem Lipsum",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),),

                            Row(children: [
                              Text("Activate",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: textblackcolor
                                ),),

                              const SizedBox(width: 5),

                              //switch
                             /* Switch(
                                //materialTapTargetSize: ,
                                  activeColor: appbarcolor2,
                                  inactiveThumbColor: buttoncolor2,
                                  value: isvalue,
                                  splashRadius: 5,
                                  onChanged: (value){
                                    setState(() {
                                      isvalue =true;
                                    });
                                  }),*/

                              const SizedBox(width: 5),
                              Text("Deactivate",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: textgreycolor
                                ),),
                            ],)
                          ],),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          Image.asset("assets/images/location.png",
                            scale: 2,),

                          const SizedBox(width: 0),

                          //switch
                          const SizedBox(width: 5),
                          Text("Noida 63 H-150 ",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: textgreycolor
                            ),),
                        ],),

                        //Rating
                        const SizedBox(height: 0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text("Rateing",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: textblackcolor
                                ),),
                              const SizedBox(width: 5),
                              const Icon(Icons.star,size: 10,color: Colors.amber,),
                              const Icon(Icons.star,size: 10,color: Colors.amber,),
                              const Icon(Icons.star,size: 10,color: Colors.amber,),
                              const Icon(Icons.star,size: 10,color: Colors.amber,),

                              const SizedBox(width: 5),

                              Text("4.0",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: textgreycolor
                                ),),
                            ],),

                            Container(height: 24,
                              width: 88,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [buttoncolor,buttoncolor2],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text("₹ 75,00,000",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: textwhitecolor),)),)
                          ],
                        ),

                        //view

                        Row(
                          children: [
                            const Icon(Icons.remove_red_eye_outlined,size: 20,),
                            const SizedBox(width:5),
                            Text("Views",
                              style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: textblackcolor),),


                            Text("     (100+)",
                              style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: buttoncolor2),),

                          ],
                        ),

                        //Edit
                        const SizedBox(height: 2,),

                        Row(
                          children: [
                            Image.asset(
                              "assets/images/edit.png",
                              scale: 2,
                            ),
                            const SizedBox(width: 5,),
                            Text("Post Edit",
                              style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: textblackcolor),),
                          ],
                        ),

                        const SizedBox(height: 8,),
                        //divider
                        const Divider(color: graycolor,
                          thickness: 1,),

                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [appbarcolor2,appbarcolor1,],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              height: 32,
                              width: 160,
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/boostup.png",
                                    scale: 2,
                                  ),
                                  Text("Free 1Hour Boost-Up",
                                    style: GoogleFonts.roboto(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: textwhitecolor),)
                                ],
                              ),
                            ),

                            const SizedBox(width: 16,),

                            Container(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [appbarcolor2,appbarcolor1,],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              height: 32,
                              width: 100,
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/verifyad.png",
                                    scale: 2,
                                  ),
                                  Text("Verify My Ad",
                                    style: GoogleFonts.roboto(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: textwhitecolor),)
                                ],
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height:16),

                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [appbarcolor2,appbarcolor1,],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              height: 32,
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/buyplan.png",
                                    scale: 2,
                                  ),

                                  Text("Buy Plan To Boost-Up",
                                    style: GoogleFonts.roboto(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: textwhitecolor),)
                                ],
                              ),
                            ),

                            const SizedBox(width: 16,),

                            Container(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [appbarcolor2,appbarcolor1,],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              height: 32,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/cross.png",
                                    scale: 2,
                                  ),
                                  Text("Close My Ad",
                                    style: GoogleFonts.roboto(fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: textwhitecolor),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),),
    );
  }
}
