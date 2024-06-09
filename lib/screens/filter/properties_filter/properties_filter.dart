import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color/colors.dart';

enum SingingCharacter { rentlease ,sell }
enum PropertyFurnished { furnished, unfurnished}

List categorylist = ["Apertments","Villas", "Pent House","Apertments","Villas", "Pent House",];
List pricelist = ["High To Low Price","Low To High (Price)","Date(Newest To Oldest)"];

class PropertiesFilterScreen extends StatefulWidget {
  const PropertiesFilterScreen({Key? key}) : super(key: key);

  @override
  State<PropertiesFilterScreen> createState() => _PropertiesFilterScreenState();
}

class _PropertiesFilterScreenState extends State<PropertiesFilterScreen> {

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


          const SizedBox(
            height: 16,
          ),

          Row(children: [
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    resiornot = true;
                  });
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(border: Border.all(color:resiornot? appbarcolor2:graycolor),
                      borderRadius: BorderRadius.circular(8),
                      color: resiornot ? backgroundpinkcolor:Colors.white),
                  child: Center(
                    child: Text("Residential",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: textblackcolor),),
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
                    resiornot = false;
                  });
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color:resiornot? graycolor:appbarcolor2),
                    borderRadius: BorderRadius.circular(8),
                      color: resiornot? Colors.white:backgroundpinkcolor,
                  ),
                  child: Center(
                    child: Text("Commercial",
                      style: GoogleFonts.roboto(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: textgreycolor),),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],),

          //Category
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Category",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorylist.length,
                  itemBuilder: (context , index){
                    return Row(
                      children: [
                        const SizedBox(width: 16,),
                        InkWell(
                          onTap:(){
                            setState(() {
                              colorimage = index;
                            });
                              },
                          child: Container(
                            height: 60,width: 96,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                                border: Border.all(color:colorimage == index?appbarcolor2:graycolor),
                            color: colorimage == index?backgroundpinkcolor:Colors.white),
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/expcat2.png",scale: 2,
                                color:  colorimage == index?appbarcolor2:imageblaclcolor),
                                Text("${categorylist[index]}",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: textdarkblack
                                  ),)
                              ],),
                          ),
                        ),
                      ],
                    );
                  })
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
          //requirement
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Requirment",
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
                height: 48,
                width: width,
                decoration: BoxDecoration(border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(8)),
                child: const DropdownMenuItem(child: Text(""),)),
          ),

          //is your property
          Padding(
            padding: EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Is Your Property Furnished",
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

                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: furnishedornot? graycolor:appbarcolor2),
                    borderRadius: BorderRadius.circular(8),
                      color: furnishedornot? Colors.white :backgroundpinkcolor
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Furnished",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: textgreycolor),),

                        Radio(value: PropertyFurnished.furnished,
                            activeColor: appbarcolor2,
                            groupValue: _propertyFurnished,
                            onChanged: (value){
                              setState(() {
                                _propertyFurnished = value;
                                furnishedornot = false;
                              });
                            })
                      ],
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
                onTap: (){

                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(border: Border.all(color:furnishedornot? appbarcolor2:graycolor ),
                      borderRadius: BorderRadius.circular(8),
                      color: furnishedornot ? backgroundpinkcolor:Colors.white),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Unfurnished",
                          style: GoogleFonts.roboto(fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: textblackcolor),),
                        Radio(
                            value: PropertyFurnished.unfurnished,
                            groupValue: _propertyFurnished,
                            activeColor: appbarcolor2,
                            onChanged: ( value){
                              setState(() {
                                _propertyFurnished = value;
                                  furnishedornot = true;

                              });
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],),

          //numbers of bed
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 8.0),
            child: Row(
              children: [
                Text("Numbers of bed",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          SizedBox(
            height: 38,
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Row(
                    children: [
                      const SizedBox(width: 16,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            noofbed = index;
                          });
                        },
                        child: Container(
                          height: 38,
                          width: 53,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                              border: Border.all(color:noofbed == index?appbarcolor2:graycolor),
                           color:noofbed == index?backgroundpinkcolor:Colors.white),
                          child: Center(child: index == 0? Text("Any"): Text("$index")),
                        ),
                      ),
                    ],
                  );
                }),
          ),

          //no. of bedrooms
          Padding(
            padding: EdgeInsets.only(top: 16.0,left: 16,bottom: 8),
            child: Row(
              children: [
                Text("Numbers of Bedrooms",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: textdarkblack
                  ),),
              ],
            ),
          ),

          SizedBox(
            height: 38,
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Row(
                    children: [
                      const SizedBox(width: 16,),
                      InkWell(
                        onTap:(){
                          setState(() {
                            noofroom = index;
                          });
                        },
                        child: Container(
                          height: 38,
                          width: 53,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                              border: Border.all(color:noofroom == index?appbarcolor2:graycolor),
                              color:noofroom == index?backgroundpinkcolor:Colors.white),
                          child: Center(child: index == 0? const Text("Any"): Text("$index")),
                        ),
                      ),
                    ],
                  );
                }),
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
