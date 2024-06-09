import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

class ServicesFAQScreen extends StatefulWidget {
  const ServicesFAQScreen({Key? key}) : super(key: key);

  @override
  State<ServicesFAQScreen> createState() => _ServicesFAQScreenState();
}

class _ServicesFAQScreenState extends State<ServicesFAQScreen> {
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

                Text("Services FAQ",style: GoogleFonts.roboto(
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
            //ques1
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q1: what are properties?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
                const SizedBox(height: 16),
                Text(
                  "A1: Properties Are The Ads Posted For Selling/Renting Or Leasing Residential Or Commercial Property",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 32),
            //ques2
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q2: what are properties?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
                const SizedBox(height: 16),
                Text(
                  "A2: Properties Are The Ads Posted For Selling/Renting Or Leasing Residential Or Commercial Property",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 32),

            Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffD9D9D9),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Continue With Phone",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffD9D9D9),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Continue With Google",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffD9D9D9),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Continue With Facebook",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
            Text(
              "Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit.",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black),
            ),

            const SizedBox(height: 16),
            Text(
              "Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit,",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black),
            ),

            const SizedBox(height: 16),
            Text(
              "  Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, ",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black),
            ),
            const SizedBox(height: 32),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                      height:80,
                      child: Image.asset("assets/images/text_space.png")),
                  Positioned(
                    left: 32,
                    right: 16,
                    //   bottom: 16,
                    child: SizedBox(
                      height:80 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "(Post>Registertaion Page> Login Pages> Basic Information Post >Vehicle >Submits)",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q3: what are properties?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
                const SizedBox(height: 16),
                Text(
                  "A3: Properties Are The Ads Posted For Selling/Renting Or Leasing Residential Or Commercial Property",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 32),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                      height:80,
                      child: Image.asset("assets/images/text_space.png")),
                  Positioned(
                    left: 32,
                    right: 16,
                    //   bottom: 16,
                    child: SizedBox(
                      height:80 ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "(Home Screen>My Ads> Ads Tab)",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q3: what are properties?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
                const SizedBox(height: 16),
                Text(
                  "A3: Properties Are The Ads Posted For Selling/Renting Or Leasing Residential Or Commercial Property",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),);
  }
}
