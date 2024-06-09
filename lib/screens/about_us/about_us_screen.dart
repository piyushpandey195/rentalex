import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
                Text("About Us",style: GoogleFonts.roboto(
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
            Text("ABOUT US",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                fontSize: 14,
                color: pureblackcolor),),

            CircleAvatar(
              radius: 50,
              backgroundColor: backgroundgraycolor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/logologin.png",
                scale: 2,
                fit: BoxFit.fill,),
              ),
            ),

            const SizedBox(height: 32),

            Center(
              child: Text("WELCOME TO Rentalex:  Buy, Sell, Rent.",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: textdarkblack
              ),),
            ),

            const SizedBox(height: 16),

            RichText(text: TextSpan(children: [
              TextSpan(text: "Properties",
              style: GoogleFonts.roboto(fontSize: 12,
              fontWeight: FontWeight.w800,
              color: textdarkblack)),
              TextSpan(text: " dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit",
                  style: GoogleFonts.roboto(fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: textdarkblack)),


            ])),

            const SizedBox(height: 16),

            Text(" Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit,"
                ,  style: GoogleFonts.roboto(fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textdarkblack)),

            const SizedBox(height: 32),
            Center(
              child: Text("Post 100 Free Ads To Buy,Sell And Rent",style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textdarkblack
              ),),
            ),

            const SizedBox(height: 16),

            RichText(text: TextSpan(children: [
              TextSpan(text: "Services: ",
                  style: GoogleFonts.roboto(fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: textdarkblack)),
              TextSpan(text: " dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit",
                  style: GoogleFonts.roboto(fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: textdarkblack)),


            ])),

            const SizedBox(height: 16),

            Text(" Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit,"
                ,  style: GoogleFonts.roboto(fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: textdarkblack)),
          ],
        ),
      ),
    );
  }
}

