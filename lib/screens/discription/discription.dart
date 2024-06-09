import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/discription/widgets/facebook_ads_widget.dart';

import '../../utils/color/colors.dart';

class DescriptionScreen extends StatefulWidget {
   DescriptionScreen({Key? key,this.image}) : super(key: key);

  String? image;
  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              appbarcolor2,
              appbarcolor1,
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, bottom: 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: textwhitecolor,
                              )),
                          const SizedBox()
                        ],
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                
                Container(
                  height: 382,
                  width: width,
                  child: ClipRRect(
                      child: Image.asset(
                    "assets/images/description.png",
                    fit: BoxFit.fill,
                  )),
                ),
                Positioned(
                    top: 16,
                    right: 16,
                    child: Image.asset("assets/images/heart.png",
                color: Colors.white,
                scale:1 ,)),
                Positioned(
                    bottom: 140,
                    right: 16,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,
                      width: 2),
                      borderRadius: BorderRadius.circular(12)),
                        child: Image.asset( "${widget.image}",//"assets/images/des_img1.png",
                          color: Colors.white,
                           )
                    )),
                Positioned(
                    bottom: 80,
                    right: 16,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,
                          width: 2),
                          borderRadius: BorderRadius.circular(12)),
                        child: Image.asset("assets/images/des_img2.png",
                          color: Colors.white,
                          scale:2,)
                    )),
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,
                          width: 2),
                          borderRadius: BorderRadius.circular(12)),
                        child: Image.asset("assets/images/des_img3.png",
                          color: Colors.white,
                          scale:2 ,)
                    )),
              ],
            ),
          ),

          // Service Loan Design
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Material(
                      elevation: .5,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16, right: 16),
                          child: Text(
                            "Service",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: textdarkblack),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Material(
                      elevation: .5,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: graycolor),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 16, right: 16),
                          child: Text(
                            "Loan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: textdarkblack),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(100),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.location_on,
                      color: buttoncolor,
                    ),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Lorem Lipsum",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: textblackcolor,
                      fontSize: 16),
                ),
                SizedBox(width: 16.0),
                Container(
                  height: 20,
                  width: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: graycolor)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Verifyed",
                        style: GoogleFonts.roboto(
                            color: textblackcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Image.asset(
                        "assets/images/verify.png",
                        scale: 2,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //location
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 16.0, top: 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/location.png",
                  scale: 2,
                ),
                Text(
                  "H-150 Sectore 63 Noida",
                  style: GoogleFonts.roboto(
                      color: textdarkblack,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    Text(
                      " 4.5",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          //divider

          const Divider(
            color: graycolor,
          ),

          FacebookAdsWidget(),

          //Detail
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Details",
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/3,
                  child: Text(
                    "Type",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: graycolor),
                  ),
                ),
                Container(
                  width:width/2,
                  child: Text(
                    "loan",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color:textblackcolor),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/3,
                  child: Text(
                    "Full Name",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: graycolor),
                  ),
                ),
                Container(
                  width:width/2,
                  child: Text(
                    "Lorem Lipsum",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color:textblackcolor),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/3,
                  child: Text(
                    "Experience",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: graycolor),
                  ),
                ),
                Container(
                  width:width/2,
                  child: Text(
                    "18 year",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color:textblackcolor),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/3,
                  child: Text(
                    "Address",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: graycolor),
                  ),
                ),
                Container(
                  width:width/2,
                  child: Text(
                    "H-15,Sector -63, b/h  3 Murti Station Noida.",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color:textblackcolor),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/3,
                  child: Text(
                    "Description",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: graycolor),
                  ),
                ),

                Container(
                  width:width/2,
                  child: Text(
                    "Best services in pan indian",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color:textblackcolor),
                  ),
                ),
              ],
            ),
          ),

          const FacebookAdsWidget(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 126,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: graycolor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/detailimg.png"),
                    ),
                    const SizedBox(width: 8),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Aman Sharma",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),),

                        const SizedBox(height: 16),
                        const SizedBox(height: 16),

                        Container(
                          height: 32,
                          width: 135,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: appbarcolor1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.report_gmailerrorred,
                                color: appbarcolor1,
                                size: 20,),
                              Text("Report This Add", style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: appbarcolor1
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [buttoncolor,buttoncolor2],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      ),
                      height: 34,
                      width: 84,
                      child:  Center(child: Text("Rate Now",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          color: textwhitecolor
                        ),)),
                    )
                  ],),


                ],
              ),
            ),
          ),
        ),

          //call chat button

          Container(
            height: 48,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [buttoncolor,buttoncolor2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:width/4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_call,
                        color: textwhitecolor,
                        size: 15,),
                      const SizedBox(width: 8,),
                      Text("Call",style:
                        GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: textwhitecolor
                        ),)
                    ],
                  ),
                ),
                VerticalDivider(),
                Container(
                  width:width/4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Image.asset("assets/images/chat.png",
                       scale: 2,
                       color: textwhitecolor,),
                      const SizedBox(width: 8,),
                      Text("Chat",style:
                      GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: textwhitecolor
                      ),)
                    ],
                  ),
                ),
                VerticalDivider(),
                Container(
                  width:width/4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.share_rounded,
                      color: textwhitecolor,
                      size: 15,),
                      const SizedBox(width: 8,),
                      Text("Share",style:
                      GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: textwhitecolor
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
