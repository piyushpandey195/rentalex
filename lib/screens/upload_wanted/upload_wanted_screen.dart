import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';
import '../ads_history/ads_history.dart';
import '../boost_up/boost_up_screen.dart';

List wantedlist = [
  "Electronics",
  "Jobs",
  "Real Estate",
  "Vehicle",
  "Others",
];

class UploadWantedScreen extends StatefulWidget {
  const UploadWantedScreen({Key? key}) : super(key: key);

  @override
  State<UploadWantedScreen> createState() => _UploadWantedScreenState();
}

class _UploadWantedScreenState extends State<UploadWantedScreen> {

  RangeValues values  = const RangeValues(45000, 95000);

  String? wanteddata;
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
                              "Wanted",
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

        //ad title
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Ad Title",
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
                        hintText: "Forem",
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
                        hintText: "9720940808",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),



        //email (optional)
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Email (Optional)",
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
                        hintText: "H-150 Sector- 63 Noida",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: graycolor,
                            fontSize: 12)),
                  ),
                ),
              ),
            ])),

        //address
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

        //price
        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 16.0,bottom: 8.0),
          child: Row(
            children: [
              Text("Price",
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: textdarkblack
                ),),
            ],
          ),
        ),

        Row(
          children: [
            const SizedBox(width: 16,),
            Expanded(
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text("Min  45,000,",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8,),
            Text("To",
              style: GoogleFonts.roboto(fontSize: 10,
                  fontWeight: FontWeight.w500),),
            const SizedBox(width: 8,),
            Expanded(
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text("Max  45,000,",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16,),
          ],
        ),

        const SizedBox(height: 16,),

        RangeSlider(
          divisions: 100,
           activeColor: textorangecolor,
            values: values,
            min: 45000,
            max: 95000,
            onChanged: (newvalue){
          values = newvalue;
          setState(() {
            print("${newvalue.start}");
          });
        }),


        //wanted
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16,top: 16),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Wanted",
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
                      icon: const Icon(Icons.keyboard_arrow_down,
                      color: graycolor,),
                      value: wanteddata,
                      hint:  Text("ex...",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                        ),),
                      onChanged: (newValue) {
                        setState(() {
                          wanteddata = newValue as String?;
                        });
                      },
                      items: wantedlist.map((valueitem) {
                        return DropdownMenuItem(
                            value: valueitem, child: Text(valueitem,
                        style: GoogleFonts.roboto(fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textdarkblack),));
                      }).toList()),
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
                        hintText: "Describe Your Need",
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

