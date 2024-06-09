import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/advetising_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/general_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/others_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/properties_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/services_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/vehicles_faq_screen.dart';
import 'package:rentalex/screens/faq/faq_widget_screen/wanted_faq_screen.dart';
import 'package:rentalex/utils/color/colors.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [appbarcolor1,appbarcolor2],
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

                Text("FAQ",style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: textwhitecolor
                ),)
              ],),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [

            //Properties FAQ
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PropertiesFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: graycolor,
                  width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Properties FAQ",
                        style: GoogleFonts.roboto(fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //services FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("services FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //Vehicles FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> VehiclesFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Vehicles FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //Wanted FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> WantedFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Wanted FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //Advertising FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> AdvetisingFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Advertising FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //General FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> GeneralFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("General FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),
            //Others FAQ
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>OthersFAQScreen()));
              },
              child: Card(
                child: Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor,
                          width: .3)),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Others FAQ",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack),),

                        const Icon(Icons.keyboard_arrow_right,color: textdarkblack,)

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
