import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
                  end: Alignment.centerRight,
              ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                const SizedBox(width: 8),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
                Text("Contact Us",style: GoogleFonts.roboto(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ABOUT US",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                fontSize: 14,
                color: pureblackcolor),),

            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: backgroundgraycolor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("assets/images/logologin.png",
                    scale: 2,
                    fit: BoxFit.fill,),
                ),
              ),
            ),
            Spacer(),
            const SizedBox(height: 32),

             Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                        height: 94,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: graycolor,
                              width: .5)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Gmail.png",
                          scale: 2,),
                          const SizedBox(height: 8),
                          Text("Gmail",
                          style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Card(
                    child: Container(
                      height: 94,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: graycolor,
                              width: .5)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/agent.png",
                          scale: 2,),
                          const SizedBox(height: 8),
                          Text("Agent",
                            style: GoogleFonts.roboto(fontSize: 12,
                                fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16,),

            Card(child: Container(
              height: 77,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: graycolor,
                      width: .5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: [
                  Column(
                    children: [
                      Text("Email:          ",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: textgreencolor
                      ),)
                    ],
                  ),

               //   const SizedBox(width: 32),
                  Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/contact_us.png",
                          scale: 2,),
                          const SizedBox(width: 16),
                          Text("support@rentalexapp.com",style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: textdarkblack
                          ),),
                        ],
                      )
                    ],
                  )
                ],),
              ),
            ),),

            const SizedBox(height: 16,),

            Card(child: Container(
              height: 77,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                border: Border.all(color: graycolor,
                width: .5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(children: [
                  Column(
                    children: [
                      Text("contact us:  ",style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: textgreencolor
                      ),)
                    ],
                  ),

                //  const SizedBox(width: 32),
                  Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/contact_us.png",
                            scale: 2,),
                          const SizedBox(width: 16),
                          Text("9720940484",style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: textdarkblack
                          ),),
                        ],
                      )
                    ],
                  )
                ],),
              ),
            ),),

            const SizedBox(height: 32),

          ],
        ),
      ),
    );
  }
}

