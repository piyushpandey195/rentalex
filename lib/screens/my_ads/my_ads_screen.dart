import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/my_ads/widget/ads_catagory_screen.dart';
import 'package:rentalex/screens/my_ads/widget/boosted_category_screen.dart';
import 'package:rentalex/screens/my_ads/widget/closed_ads_screen.dart';
import 'package:rentalex/screens/my_ads/widget/plan_ads_category_screen.dart';

import '../../utils/color/colors.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  var categorydata = "ads";
  bool isvalue = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(137.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                height: 137,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    appbarcolor1,
                    appbarcolor2,
                  ], begin: Alignment.topCenter, end: Alignment.centerLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 22,
                            backgroundImage:
                                AssetImage("assets/images/Ellipse.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hey Rahul,",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "How's Your Day Going ,",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 12,
                                  //height: 14
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 115),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/location.png",
                          scale: 2,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "H-150 sector 63  Noida",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0),
            child: Material(
              elevation: 5,
              child: Container(
                width: width,
                height: 50,
                decoration: BoxDecoration(
                  color: whitecolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const SizedBox(
                      width: 10,
                    ),

                    InkWell(

                      onTap: () {
                        setState(() {
                          categorydata = "ads";
                        });
                      },

                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                            //  color: appbarcolor1,
                            gradient: categorydata == "ads"
                                ? const LinearGradient(
                                    colors: [appbarcolor1, appbarcolor2],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                : const LinearGradient(
                                    colors: [whitecolor, whitecolor],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 15,
                          ),
                          child: Center(
                              child: Text(
                            "Ads",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: textblackcolor),
                          )),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          categorydata = "boosted";
                        });
                      },
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                            //  color: appbarcolor1,
                            gradient: categorydata == "boosted"
                                ? const LinearGradient(
                                    colors: [appbarcolor1, appbarcolor2],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                : const LinearGradient(
                                    colors: [whitecolor, whitecolor],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 13.0,
                            right: 13,
                          ),
                          child: Center(
                              child: Text(
                            "Boosted",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: textblackcolor),
                          )),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          categorydata = "planads";
                        });
                      },
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                            //  color: appbarcolor1,
                            gradient: categorydata == "planads"
                                ? const LinearGradient(
                                    colors: [appbarcolor1, appbarcolor2],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                : const LinearGradient(
                                    colors: [whitecolor, whitecolor],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            right: 12,
                          ),
                          child: Center(
                              child: Text(
                            "Plan Ads ",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: textblackcolor),
                          )),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          categorydata = "closedads";
                        });
                      },
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                            //  color: appbarcolor1,
                            gradient: categorydata == "closedads"
                                ? const LinearGradient(
                                    colors: [appbarcolor1, appbarcolor2],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                : const LinearGradient(
                                    colors: [whitecolor, whitecolor],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            right: 12,
                          ),
                          child: Center(
                              child: Text(
                            "Closed ADs",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: textblackcolor),
                          )),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                  ],
                ),
              ),
            ),
          ),
          categorydata == "ads"?
          const AdsWidgetScreen():
          categorydata == "boosted" ?
          const BoostedWidgetScreen():
          categorydata == "planads"?
          const PlanAdsWidgetScreen():
          const ClosedAdsWidgetScreen()

        ],
      ),
    );
  }
}
