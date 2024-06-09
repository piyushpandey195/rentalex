import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class BoostUpScreen extends StatefulWidget {
  const BoostUpScreen({Key? key}) : super(key: key);

  @override
  State<BoostUpScreen> createState() => _BoostUpScreenState();
}

class _BoostUpScreenState extends State<BoostUpScreen> {
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
                  colors: [appbarcolor2, appbarcolor1],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Boost Up",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: textwhitecolor),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/images/ad_boost.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    Container(
                        height: 121,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/adsimg.png",
                          fit: BoxFit.fill,
                        )),

                    //detail
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lorem Lipsum",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 88,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [buttoncolor, buttoncolor2],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                                "₹ 75,00,000",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: textwhitecolor),
                              )),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/location.png",
                          scale: 2,
                        ),

                        const SizedBox(width: 0),

                        //switch
                        const SizedBox(width: 5),
                        Text(
                          "Noida 63 H-150 ",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textgreycolor),
                        ),
                      ],
                    ),

                    //Rating
                    const SizedBox(height: 0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Rateing",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textblackcolor),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.amber,
                            ),
                            const Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.amber,
                            ),
                            const Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.amber,
                            ),
                            const Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "4.0",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textgreycolor),
                            ),
                          ],
                        ),

                      ],
                    ),

                    //view

                    Row(
                      children: [
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Views",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: textblackcolor),
                        ),
                        Text(
                          "     (100+)",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: buttoncolor2),
                        ),
                      ],
                    ),

                    //Edit
                    const SizedBox(
                      height: 2,
                    ),



                    const SizedBox(
                      height: 8,
                    ),
                    //divider
                    const Divider(
                      color: graycolor,
                      thickness: 1,
                    ),

                    const SizedBox(
                      height: 8,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    appbarcolor2,
                                    appbarcolor1,
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/boostup.png",
                                scale: 2,
                              ),
                              const SizedBox(width: 8,),
                              Text(
                                "Free 1Hour Boost-Up",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: textwhitecolor),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                            child: Container(
                          height: 22,
                          width: 31,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              buttoncolor,buttoncolor2
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(8))
                          ),
                              child: Center(
                                child: Text("AD",
                                style:GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: textwhitecolor
                                ),),
                              ),
                        ))
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
