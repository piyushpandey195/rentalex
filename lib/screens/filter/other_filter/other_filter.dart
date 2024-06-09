import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

enum SingingCharacter { rentlease ,sell }
enum PropertyFurnished { furnished, unfurnished}

List categorylist = ["Apertments","Villas", "Pent House","Apertments","Villas", "Pent House",];
List pricelist = ["High To Low Price","Low To High (Price)","Date(Newest To Oldest)"];
class OtherFilter extends StatefulWidget {
  const OtherFilter({Key? key}) : super(key: key);

  @override
  State<OtherFilter> createState() => _OtherFilterState();
}

class _OtherFilterState extends State<OtherFilter> {
  SingingCharacter? _character = SingingCharacter.rentlease;
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

          //Radio button
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
                  Text('Rent/Lease',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textblackcolor),),
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
                  Text('Sell',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textblackcolor),),
                ],
              ),

            ],
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
                      value: pricedata,
                      hint: const Text("high to low price"),
                      onChanged: (newValue){
                        setState(() {
                          pricedata = newValue as String?;
                        });
                      },
                      items: pricelist.map((valueitem){
                        return DropdownMenuItem(
                            value: valueitem,
                            child:Text(valueitem) );
                      }).toList()
                  ),
                )
            ),
          ),

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

