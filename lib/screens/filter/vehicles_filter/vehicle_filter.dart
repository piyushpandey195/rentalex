import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

enum SingingCharacter { rentlease ,sell }
enum PropertyFurnished { furnished, unfurnished}

List fuellist = ["Petrol","Diesel","Petrol/Cng","Hybrid","Electric","lPG","Others", ];
List yearlist = ["2019","2018","2017"];

class VehiclesFilterScreen extends StatefulWidget {
  const VehiclesFilterScreen({Key? key}) : super(key: key);

  @override
  State<VehiclesFilterScreen> createState() => _VehiclesFilterScreenState();
}

class _VehiclesFilterScreenState extends State<VehiclesFilterScreen> {


  bool isverify = true;
  String? yeardata;
  var fueldata;

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

          //vehicle type
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Vehicle Type",
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

          //brand name
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Brand Name",
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

          //model
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Model ",
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

          //transmission
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Year",
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
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      value: yeardata,
                      hint:  Text("2019...",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: graycolor),),
                      onChanged: (newValue){
                        setState(() {
                          yeardata = newValue as String?;
                        });
                      },
                      items: yearlist.map((valueitem){
                        return DropdownMenuItem(
                            value: valueitem,
                            child:Text(valueitem) );
                      }).toList()
                  ),
                )
            ),
          ),


          //transmission
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Fuel",
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
                  padding: const EdgeInsets.only(left: 16.0,right: 16),
                  child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      value: fueldata,
                      hint:  Text("Cng + Petrol",
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: graycolor),),
                      onChanged: (newValue){
                        setState(() {
                          fueldata = newValue as String?;
                        });
                      },
                      items: fuellist.map((valueitem){
                        return DropdownMenuItem(
                            value: valueitem,
                            child:Text(valueitem) );
                      }).toList()
                  ),
                )
            ),
          ),


          //transmission
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Transmission",
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

          //price
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Budget",
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
          Row(
            children: [
              const SizedBox(width: 16,),
              SizedBox(
                  width:width/4,
                  child: const Divider()),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: appbarcolor2)),
              ),
              Expanded(
                child: SizedBox(
                    width:width/3,
                    child: const Divider(
                      color: appbarcolor2,
                      thickness: 2,)),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: appbarcolor2)),
              ),
              SizedBox(
                  width:width/4,
                  child: const Divider()),
              const SizedBox(width: 16,),
            ],
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

            Row(children: [
              const SizedBox(width: 16,),
              Icon(Icons.circle_outlined),
              const SizedBox(width: 16,),
              Text("High To Low Price",style: GoogleFonts.roboto(fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),),
            ],),

          const SizedBox(height: 16,),

          Row(children: [
            const SizedBox(width: 16,),
            Icon(Icons.circle_outlined),
            const SizedBox(width: 16,),
            Text("Low To High Price",style: GoogleFonts.roboto(fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black),),
          ],),

          const SizedBox(height: 16,),

          Row(children: [
            const SizedBox(width: 16,),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
              border: Border.all(color: graycolor,
              width: 3),
              color: Colors.red),
            ),
            const SizedBox(width: 16,),
            Text("Date Netwest To Oldest",style: GoogleFonts.roboto(fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black),),
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

