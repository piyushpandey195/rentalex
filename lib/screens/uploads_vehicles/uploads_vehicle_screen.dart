import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/boost_up/boost_up_screen.dart';

import '../../utils/color/colors.dart';
import '../ads_history/ads_history.dart';



List vehicletypelist = [
  "Auto Rickshaw/e-Rickshaw",
  "Bus",
  "Car",
  "Heavy Commercial/Machinery",
  "Motorcycle",
  "Pick-Up Van/ Pick-up truck",
  "Scooter",
  "Tractor",
  "Truck",
];

List brandnamelist = [
  "Brand Name 1",
  "Brand Name 2",
  "Brand Name 3",
];

List modellist = [
  "Model 1",
  "Model 2",
  "Model 3",
];

List yearlist = [
  "2019",
  "2020",
  "2021",
  "2022",
  "2023",
];

List fuellist =["Petrol","Diesel","Petrol/Cng","Hybrid","Electric","lPG","Others", ];

List transmissionlist = [
  "Auto",
  "Manual",
];

class UploadsVehiclesScreen extends StatefulWidget {
  const UploadsVehiclesScreen({Key? key}) : super(key: key);

  @override
  State<UploadsVehiclesScreen> createState() => _UploadsVehiclesScreenState();
}

class _UploadsVehiclesScreenState extends State<UploadsVehiclesScreen> {

  String? vehicledata;
  String? branddata;
  String? modeldata;
  String? yeardata;
  String? fueldata;
  String? transmissiondata;
  String isfeature = "gallery";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(210),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: Stack(
            children: [
              Material(
                elevation: 2,
                child: Container(
                  height: 176,
                  decoration: const BoxDecoration(
                    /*  boxShadow:[ BoxShadow(
                          blurRadius: 20.0,
                          color: graycolor,
                        )],*/
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 42.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vehicles",
                              style: GoogleFonts.roboto(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Hi User, Fill In Your Details",
                              style: GoogleFonts.roboto(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isfeature = "gallery";
                          });
                        },
                        child: Container(
                          height: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(blurRadius: 8, color: graycolor)
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/images/gallery.png",
                                  scale: 2,
                                  color: isfeature == "gallery"? textorangecolor:textdarkblack
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                "Gallery",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400, fontSize: 12,
                                    color: isfeature == "gallery"? textorangecolor:textdarkblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child:  InkWell(
                        onTap: (){
                          setState(() {
                            isfeature = "camera";
                          });
                        },
                        child: Container(
                          height: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(blurRadius: 8, color: graycolor)
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/images/Frame box.png",
                                  scale: 2,
                                  color: isfeature == "camera"? textorangecolor:textdarkblack
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                "Camera",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400, fontSize: 12,
                                    color: isfeature == "camera"? textorangecolor:textdarkblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isfeature = "videoUpload";
                          });
                        },
                        child: Container(
                          height: 106,
                          width: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(blurRadius: 8, color: graycolor)
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/images/Frame box (1).png",
                                  scale: 2,
                                  color: isfeature == "videoUpload"? textorangecolor:textdarkblack
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                "Video Upload",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400, fontSize: 12,
                                    color: isfeature == "videoUpload"? textorangecolor:textdarkblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Container(
            height: 59,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: graycolor)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 Free Post Left",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: textgreencolor),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AdsHistoryScreen()));
                    },
                    child: Container(
                      height: 38,
                      width: 109,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                              colors: [
                                appbarcolor2,
                                appbarcolor1,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                      child: Center(
                        child: Text(
                          "AD History",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        //city
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "City",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Noida",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //phone number
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Address",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "H-150 sector- 63 noida",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //vehicle type
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Vehicle Type",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: graycolor,),
                      value: vehicledata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          vehicledata = newValue as String?;
                        });
                      },
                      items: vehicletypelist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: textdarkblack
                        ),));
                      }).toList()),
                ),
              ),
            ])),

        //brand name
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Brand name",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                        color: graycolor,),
                      value: branddata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          branddata = newValue as String?;
                        });
                      },
                      items: brandnamelist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack
                          ),));
                      }).toList()),
                ),
              ),
            ])),


        //model
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Model",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                        color: graycolor,),
                      value: modeldata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          modeldata = newValue as String?;
                        });
                      },
                      items: modellist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack
                          ),));
                      }).toList()),
                ),
              ),
            ])),


        //year
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Year",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                        color: graycolor,),
                      value:  yeardata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          yeardata = newValue as String?;
                        });
                      },
                      items: yearlist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack
                          ),));
                      }).toList()),
                ),
              ),
            ])),

        //km/miles driven
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Km/Miles Driven",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "20,000km",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //price
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Price",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "50,0000",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //fuel
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Fuel",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                        color: graycolor,),
                      value: fueldata,
                      hint:  Text("petrol",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          fueldata = newValue as String?;
                        });
                      },
                      items: fuellist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack
                          ),));
                      }).toList()),
                ),
              ),
            ])),

        //transmission
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Transmission",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded,
                        color: graycolor,),
                      value: transmissiondata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          transmissiondata = newValue as String?;
                        });
                      },
                      items: transmissionlist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textdarkblack
                          ),));
                      }).toList()),
                ),
              ),
            ])),

        //no. of owners
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "No. Of Owners",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "1st",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //phone number
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Phone Number",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "1 week",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //description
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              Text(
                "Description",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textdarkblack),
              ),

              const SizedBox(
                height: 8,
              ),

              Container(
                height: 111,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Describe Your Vehicle In Detail",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
              const SizedBox(height: 32,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const BoostUpScreen()));
                },
                child: Container(
                  width:width ,
                  height: 48,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [buttoncolor,buttoncolor2],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text("Submit",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: textwhitecolor
                      ),),
                  ),
                ),
              )
            ])),


      ]),);
  }
}

