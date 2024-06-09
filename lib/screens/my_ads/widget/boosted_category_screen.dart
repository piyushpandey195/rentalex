import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/utils/color/colors.dart';

class BoostedWidgetScreen extends StatefulWidget {
  const BoostedWidgetScreen({Key? key}) : super(key: key);

  @override
  State<BoostedWidgetScreen> createState() => _BoostedWidgetScreenState();
}

class _BoostedWidgetScreenState extends State<BoostedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
        child: SizedBox(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16.0,right: 16,left: 16),
                    child: Container(
                      width: width,
                      height: 192,
                      decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  height: 170,
                                  width: width / 2.3,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "assets/images/img box.png",
                                      //scale: 2,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 15,
                                    child: Container(
                                      height: 25,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight:
                                                  Radius.circular(15))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          "Boosted",
                                          style: GoogleFonts.roboto(
                                              color: textblackcolor),
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 15,
                                    right: 10,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: whitecolor,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          "assets/images/heart.png",
                                          scale: 2,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 25,
                                      width: width / 2.3,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withAlpha(150),
                                          borderRadius: BorderRadius.only()),
                                      child: Center(
                                        child: Text(
                                          "Residential (Flat)",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              color: textblackcolor,
                                              fontSize: 14),
                                        ),
                                      ),
                                    )),
                              ],
                            ),

                            //text design
                            Expanded(
                              child: Container(
                                height: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Lorem Lipsum",
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w500,
                                                color: textblackcolor,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 4.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            "assets/images/location.png",
                                            scale: 2,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Plat no 11,Anand vihar",
                                              maxLines: 1,
                                              style: GoogleFonts.roboto(
                                                  color: textblackcolor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Rateing",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400,
                                                    color: textblackcolor,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                width: 5,
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
                                              Text(
                                                "4.0",
                                                style: GoogleFonts.roboto(
                                                    color: textblackcolor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 4,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8),
                                      child: Container(
                                        height: 20,
                                        width: 64,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: graycolor)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
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
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 4,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(),
                                          Container(
                                            height: 25,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                    colors: [buttoncolor, buttoncolor2,
                                                    ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter
                                                )),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.0),
                                                  child: Text(
                                                    "₹ 6,00,0000",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 4,
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      child: Divider(
                                        thickness: 0,
                                      ),
                                    ),

                                    //   const SizedBox(height: 2,),

                                    SizedBox(
                                      width: width / 2.7,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 15,
                                          ),
                                          Text(
                                            " 24 (Views) ",
                                            style: GoogleFonts.roboto(
                                                color: textblackcolor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })));
  }
}
