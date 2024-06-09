import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/other_filter/other_filter.dart';
import 'package:rentalex/screens/filter/properties_filter/properties_filter.dart';
import 'package:rentalex/screens/filter/services_filter/service_filter.dart';
import 'package:rentalex/screens/filter/vehicles_filter/vehicle_filter.dart';
import 'package:rentalex/screens/filter/wanted_filter/wanted_filter_screen.dart';
import 'package:rentalex/screens/other/other_screen.dart';

import '../../utils/color/colors.dart';


class FilterScreen extends StatefulWidget {
   FilterScreen({Key? key, required this.type}) : super(key: key);
   
   String type ;

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {


  var categorydata = "properties";

  //static get type => null;
  


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Material(
          elevation: 1,
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
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
                                color: textblackcolor,
                              )),
                          Text(
                            "Filter",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: textblackcolor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Clear All",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: appbarcolor2),
                          ),
                          const SizedBox(width: 8,),
                          Image.asset(
                            "assets/images/cross.png",
                            scale: 2,
                            color: appbarcolor2,
                          ),
                          const SizedBox(width: 16,),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
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
                height: 72,
                decoration: const BoxDecoration(
                  color: whitecolor,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const SizedBox(
                        width: 10,
                      ),

                      InkWell(

                        onTap: () {
                          setState(() {
                            categorydata = "properties";
                          });
                        },

                        child: Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            //  color: appbarcolor1,
                              gradient: categorydata == "properties"
                                  ? const LinearGradient(
                                  colors: [appbarcolor1, appbarcolor2],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                                  : const LinearGradient(
                                  colors: [whitecolor, whitecolor],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Properties",
                              //  maxLines: 1,
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: categorydata == "properties"? textwhitecolor: textblackcolor
                                ),
                              )),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            categorydata = "servieces";
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 88,
                          decoration: BoxDecoration(
                            //  color: appbarcolor1,
                              gradient: categorydata == "servieces"
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
                                  "Services",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: categorydata == "servieces"? textwhitecolor: textblackcolor
                                  ),
                                )),
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            categorydata = "others";
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 88,
                          decoration: BoxDecoration(
                            //  color: appbarcolor1,
                              gradient: categorydata == "others"
                                  ? const LinearGradient(
                                  colors: [appbarcolor1, appbarcolor2],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                                  : const LinearGradient(
                                  colors: [whitecolor, whitecolor],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Others",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: categorydata == "others"? textwhitecolor: textblackcolor
                                ),
                              )),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            categorydata = "vehicles";
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 88,
                          decoration: BoxDecoration(
                            //  color: appbarcolor1,
                              gradient: categorydata == "vehicles"
                                  ? const LinearGradient(
                                  colors: [appbarcolor1, appbarcolor2],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                                  : const LinearGradient(
                                  colors: [whitecolor, whitecolor],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Vehicles",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: categorydata == "vehicles"? textwhitecolor: textblackcolor
                                ),
                              )),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            categorydata = "wanted";
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 88,
                          decoration: BoxDecoration(
                            //  color: appbarcolor1,
                              gradient: categorydata == "wanted"
                                  ? const LinearGradient(
                                  colors: [appbarcolor1, appbarcolor2],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                                  : const LinearGradient(
                                  colors: [whitecolor, whitecolor],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                                "Wanted",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: categorydata == "wanted"? textwhitecolor: textblackcolor
                                ),
                              )),
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
          ),

          categorydata == "properties"||categorydata == "${widget.type}"? PropertiesFilterScreen():
         categorydata == "servieces"||categorydata == "${widget.type}"?
          ServicesFilterScreen():
         categorydata == "others"||categorydata == "${widget.type}"?
          OtherFilter():
         categorydata == "vehicles"||categorydata == "${widget.type}"?
          VehiclesFilterScreen():
             WantedFilterScreen(),


        ],
      ),
    );
  }
}
