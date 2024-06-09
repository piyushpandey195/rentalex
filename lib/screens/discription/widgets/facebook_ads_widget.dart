import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

class FacebookAdsWidget extends StatefulWidget {
  const FacebookAdsWidget({Key? key}) : super(key: key);

  @override
  State<FacebookAdsWidget> createState() => _FacebookAdsWidgetState();
}

class _FacebookAdsWidgetState extends State<FacebookAdsWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 315,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: graycolor)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    color: bluecolor,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "facebook Advertiser",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Sponsored",
                        style: GoogleFonts.roboto(
                            color: sponserdcolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 225,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                        height: 225,
                        width: 244,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: grayfieldcolor),
                        child: Column(
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "assets/images/facebook_ads.png"),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Audience",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Network",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: bluecolor,
                              ),
                              child: Center(
                                child: Text(
                                  "INSTALL NOW",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: textwhitecolor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
