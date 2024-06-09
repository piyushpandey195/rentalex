import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';
import '../ads_history/ads_history.dart';
import '../boost_up/boost_up_screen.dart';

List categorylist = [
  "categorydata 1",
  "categorydata 2",
  "categorydata 3"
];

class UploadsServicesScreen extends StatefulWidget {
  const UploadsServicesScreen({Key? key}) : super(key: key);

  @override
  State<UploadsServicesScreen> createState() => _UploadsServicesScreenState();
}

class _UploadsServicesScreenState extends State<UploadsServicesScreen> {

  String? categorydata;
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
                              "Services",
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
                        onTap: () {
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
                              Image.asset("assets/images/gallery.png",
                                  scale: 2,
                                  color: isfeature == "gallery"
                                      ? textorangecolor
                                      : textdarkblack),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Gallery",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: isfeature == "gallery"
                                        ? textorangecolor
                                        : textdarkblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: InkWell(
                        onTap: () {
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
                              Image.asset("assets/images/Frame box.png",
                                  scale: 2,
                                  color: isfeature == "camera"
                                      ? textorangecolor
                                      : textdarkblack),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Camera",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: isfeature == "camera"
                                        ? textorangecolor
                                        : textdarkblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: InkWell(
                        onTap: () {
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
                              Image.asset("assets/images/Frame box (1).png",
                                  scale: 2,
                                  color: isfeature == "videoUpload"
                                      ? textorangecolor
                                      : textdarkblack),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Video Upload",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: isfeature == "videoUpload"
                                        ? textorangecolor
                                        : textdarkblack),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdsHistoryScreen()));
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

        //Fill Name
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Full Name",
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
                        hintText: "Anand Niketan Housing",
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
                        hintText: "Anand Niketan Housing",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //category
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Category",
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
                      value: categorydata,
                      icon: const Icon(Icons.keyboard_arrow_down,
                      color: graycolor,),
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          categorydata = newValue as String?;
                        });
                      },
                      items: categorylist.map((valueitem) {
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

        //skill (keyword)
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Skill (Keyword)",
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
                        hintText: "ex",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //firm/business
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Firm/Business",
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
                        hintText: "exx",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //Experience
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Experience",
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
                        hintText: "5 years",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //location
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Location",
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

        //charges /fees (optional)
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Charges /Fees (Optional)",
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

        //description (optional)
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              Text(
                "Description (Optional)",
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
                        hintText: "type..",
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


      ]),
    );
  }
}
