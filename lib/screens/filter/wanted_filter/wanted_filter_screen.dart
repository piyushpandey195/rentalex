import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';


enum PropertyFurnished { furnished, unfurnished}

List categorylist = ["Apertments","Villas", "Pent House","Apertments","Villas", "Pent House",];
List pricelist = ["High To Low Price","Low To High (Price)","Date(Newest To Oldest)"];
class WantedFilterScreen extends StatefulWidget {
  const WantedFilterScreen({Key? key}) : super(key: key);

  @override
  State<WantedFilterScreen> createState() => _WantedFilterScreenState();
}

class _WantedFilterScreenState extends State<WantedFilterScreen> {

  PropertyFurnished? _propertyFurnished = PropertyFurnished.unfurnished;

  bool    resiornot = true;
  bool  furnishedornot = true;
  bool isverify = true;
  var colorimage = 0;
  var    noofbed = 2;
  var    noofroom = 2;
  String? pricedata;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),


          //city
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("city",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Noida",
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: graycolor),
                      border: InputBorder.none
                    /*OutlineInputBorder(
                        borderSide: BorderSide(color: graycolor,
                        width: .5),
                        borderRadius: BorderRadius.circular(8),
                      )*/
                  ),
                ),
              ),
            ),
          ),


          //wanted
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Wanted",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Oven",
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: graycolor),
                      border: InputBorder.none
                    /*OutlineInputBorder(
                        borderSide: BorderSide(color: graycolor,
                        width: .5),
                        borderRadius: BorderRadius.circular(8),
                      )*/
                  ),
                ),
              ),
            ),
          ),


          //verified
          Padding(
            padding: EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                const Icon(Icons.star,
                  size: 15,),
                const SizedBox(width: 5,),
                Text("Verified",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          Row(children: [
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    isverify = true;
                  });
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(border: Border.all(color: isverify?appbarcolor2:graycolor),
                      borderRadius: BorderRadius.circular(8),
                      color: isverify?backgroundpinkcolor:Colors.white),
                  child: Center(
                    child: Text("All",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: isverify? textblackcolor:graycolor),),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    isverify = false;
                  });
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(color:isverify? graycolor:appbarcolor2),
                      borderRadius: BorderRadius.circular(8),
                      color: isverify?Colors.white: backgroundpinkcolor
                  ),
                  child: Center(
                    child: Text("verifed",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: isverify? textgreycolor:textblackcolor),),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],),

          const SizedBox(height: 16,),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 48,
              width: width,
              decoration: BoxDecoration(gradient: const LinearGradient (
                  colors:[buttoncolor,buttoncolor2 ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              ),
                  borderRadius: BorderRadius.circular(8)),
              child:  Center(
                child: Text("Submit",
                  style: GoogleFonts.roboto(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textwhitecolor),),
              ),
            ),
          )
        ],
      ),
    );
  }
}

