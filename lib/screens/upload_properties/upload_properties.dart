import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/ads_history/ads_history.dart';
import 'package:rentalex/utils/color/colors.dart';

import '../boost_up/boost_up_screen.dart';

enum SingingCharacter { rentlease, sell }

List requirementlist = [
  "Requirement 1",
  "Requirement 2",
  "Requirement 3"
];

List arealist = [
  "1200",
  "1300",
  "1400"
];
List facilitieslist = [
  "Car Parcking",
  "Lift",
];

class UploadPropertiesScreen extends StatefulWidget {
  const UploadPropertiesScreen({Key? key}) : super(key: key);

  @override
  State<UploadPropertiesScreen> createState() => _UploadPropertiesScreenState();
}

class _UploadPropertiesScreenState extends State<UploadPropertiesScreen> {
  SingingCharacter? _character = SingingCharacter.rentlease;

  String? requiredata;
  String? facilitiesdata;
  String? areadata;
  bool resiornot = true;

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
                              "Properties",
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
      body: ListView(
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Radio<SingingCharacter>(
                    value: SingingCharacter.rentlease,
                    groupValue: _character,
                    activeColor: appbarcolor2,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'Rent/Lease',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textblackcolor),
                  ),
                ],
              ),
              Column(
                children: [
                  Radio<SingingCharacter>(
                    value: SingingCharacter.sell,
                    groupValue: _character,
                    activeColor: appbarcolor2,
                    focusColor: graycolor,
                    hoverColor: Colors.grey,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'Sell',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textblackcolor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      resiornot = true;
                    });
                  },
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: resiornot ? appbarcolor2 : graycolor),
                        borderRadius: BorderRadius.circular(8),
                        color: resiornot ? backgroundpinkcolor : Colors.white),
                    child: Center(
                      child: Text(
                        "Residential",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: textblackcolor),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      resiornot = false;
                    });
                  },
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: resiornot ? graycolor : appbarcolor2),
                      borderRadius: BorderRadius.circular(8),
                      color: resiornot ? Colors.white : backgroundpinkcolor,
                    ),
                    child: Center(
                      child: Text(
                        "Commercial",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: textgreycolor),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Property Title",
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
                const SizedBox(height: 16),

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
                          hintText: "9720240898",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

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
                          hintText: "h-150 sectore- 63 noida",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

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
                    padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "House",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  "Furnishing (optional)",
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
                          hintText: "3 Rooms",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  "Bedrooms",
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
                          hintText: "3 Rooms",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  "Bathrooms",
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
                          hintText: "3 Rooms",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  "Floors (Optional)",
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
                          hintText: "V1st Floore",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  "Availability (Optional)",
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
                const SizedBox(height: 16),

                Text(
                  "Monthly Maintenance (Optional)",
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


                const SizedBox(height: 16),
                Text(
                  "Requirement",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textdarkblack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    width: width,
                    height: 48,
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
                          value: requiredata,
                          hint:  Text("Family",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: graycolor),),
                          onChanged: (newValue) {
                            setState(() {
                              requiredata = newValue as String?;
                            });
                          },
                          items: requirementlist.map((valueitem) {
                            return DropdownMenuItem(
                                value: valueitem, child: Text(valueitem,
                              style: GoogleFonts.roboto(fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textdarkblack),));
                          }).toList()),
                    )),

                const SizedBox(height: 16),
                Text(
                  "Facilities",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textdarkblack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    width: width,
                    height: 48,
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
                          value: facilitiesdata,
                          hint:  Text("car parking , lift",
                            style: GoogleFonts.roboto(fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: graycolor),),
                          onChanged: (newValue) {
                            setState(() {
                              facilitiesdata = newValue as String?;
                            });
                          },
                          items: facilitieslist.map((valueitem) {
                            return DropdownMenuItem(
                                value: valueitem, child: Text(valueitem,
                              style: GoogleFonts.roboto(fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textdarkblack),));
                          }).toList()),
                    )),
                const SizedBox(
                  height: 8,
                ),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              "Ac",
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.close,
                              color: graycolor,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),
                    //Fridge
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              "Fridge",
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.close,
                              color: graycolor,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),
                    //water purifier (ro)
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              "Water Purifier (Ro)",
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.close,
                              color: graycolor,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),
                    //geyser
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: graycolor),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              "Geyser",
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.close,
                              color: graycolor,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                //Area (Sqft) Optional
                const SizedBox(height: 16),
                Text(
                  "Area (Sqft) Optional",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textdarkblack),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    width: width,
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(color: graycolor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: DropdownButton(
                          isExpanded: true,
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down,
                            color: graycolor,),
                          value: areadata,
                          hint:  Text("12000",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: graycolor
                          ),),
                          onChanged: (newValue) {
                            setState(() {
                              areadata = newValue as String?;
                            });
                          },
                          items: arealist.map((valueitem) {
                            return DropdownMenuItem(
                                value: valueitem, child: Text(valueitem,
                                style: GoogleFonts.roboto(fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: textdarkblack),));
                          }).toList()),
                    )),

                //price option
                const SizedBox(height: 16),

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
                          hintText: "1 week",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                ),

                //Description option
                const SizedBox(height: 16),

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
              ],
            ),
          ),


        ],
      ),
    );
  }
}
