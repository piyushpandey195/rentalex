import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class AdvertisingScreen extends StatefulWidget {
  const AdvertisingScreen({Key? key}) : super(key: key);

  @override
  State<AdvertisingScreen> createState() => _AdvertisingScreenState();
}

class _AdvertisingScreenState extends State<AdvertisingScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [appbarcolor2,appbarcolor1],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
              )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                const SizedBox(width: 8),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
                Text("Become Advertising Partner",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: textwhitecolor
                ),)
              ],),

            ],
          ),
        ),
      ),
    
    body: ListView(
      children:  [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text("Become A Rentalex Advertising Partner",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textdarkblack
            ),),
          ),
        ),
        const Divider(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/mob1.png",
              scale: 2,),
              const SizedBox(width: 16),
              Expanded(
                child: Text("Here On Rentlex We Provide An Opportunity For Direct Advertising On Our Home Ui As Indicative In The Sample Picture",
                style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                fontSize: 12,
                color: pureblackcolor),),
              )
            ],
          ),
        ),

        const Divider(),

        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 16,bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("We Have Two Advertising Spaces With in The Ads On Rentlex as Indicative In The Sample Picture.",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: pureblackcolor),),
              ),

              Image.asset("assets/images/mob2.png",
                scale: 2,),
            ],
          ),
        ),

        const Divider(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 144,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: graycolor,
              width: .5),
              boxShadow: const [
                BoxShadow(blurRadius: 2,
                color: graycolor)
              ],
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Charges For Native Ads Are As Follows.",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: pureblackcolor
                  ),),
                  const SizedBox(height: 8),
                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 10 Days Rs 599/- Only",style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: pureblackcolor
                    ),)
                  ],),

                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 15 Days Rs 799/- Only",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),)
                  ],),

                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 30 Days Rs 999/- Only",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),)
                  ],),

                ],
              ),
            ),
          ),
        ),

        const Divider(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/mob3.png",
                scale: 2,),
              const SizedBox(width: 16),
              Expanded(
                child: Text("Also On Rentlex We Have Advertising Apace In The  From Of A Reward Video Of Max,30Sec.",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: pureblackcolor),),
              )
            ],
          ),
        ),


        const Divider(),

        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 16,bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(text: TextSpan(
               children: [
                    TextSpan(text: "This Reward Video Play Whenever You Unlock 5 New Ads Clicking From The Given 100 Free Ads Or Boost Up For Free For One Hour ",
            style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                fontSize: 12,
                color: pureblackcolor,
                ),),
                 TextSpan(text: " Clicking Watch To Boostup Button ",
                   style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                       fontSize: 12,
                       color: textorangecolor,
                   height: .5),),
                 TextSpan(text: "The Reward Is Give In Exchange Of The Video Watched.",
                   style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                       fontSize: 12,
                       color: pureblackcolor,
                       ),),
                  ],)
              ),
                ),
              Image.asset("assets/images/mob2.png",
                scale: 2,),
            ]
          ),
        ),

        const Divider(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 204,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: graycolor,
                    width: .5),
                boxShadow: const [
                  BoxShadow(blurRadius: 2,
                      color: graycolor)
                ],
                color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Charges For Reward Video Are  As Follows.",
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: pureblackcolor
                    ),),
                  const SizedBox(height: 8),
                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 10 Days Rs 599/- Only",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),)
                  ],),

                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 15 Days Rs 799/- Only",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),)
                  ],),

                  Row(children: [
                    Image.asset("assets/images/teer.png",scale: 2,),
                    const SizedBox(width: 16,),
                    Text("For 30 Days Rs 999/- Only",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),)
                  ],),

                  const SizedBox(height: 16),

                  Text("Combined Charges For Native And Reward Video Is 1499/- fro 30 Days.",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: pureblackcolor
                    ),),

                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("For Advertising Please Contact: Phone",style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: pureblackcolor
            ),),
            const SizedBox(height: 8),
            Text("Number: +91 931136 1263",style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: pureblackcolor
            ),),
            const SizedBox(height: 8),
            Text("email: advertising@rentalexapp.com",style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: pureblackcolor
            ),)
          ],),
        )

      ],
    ),);
  }
}
