import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter_other/filter_other_screen.dart';

import '../../utils/color/colors.dart';
import '../filter/filter.dart';
import '../home/widget/body_data_view.dart';
class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [appbarcolor2,appbarcolor1,],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 0.0,bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(onPressed:(){
                        Navigator.pop(context);
                      },
                          icon: const Icon(Icons.arrow_back,color: textwhitecolor,)),

                      Text("Others",
                        style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,
                            color: textwhitecolor
                        ),),
                    ],),
                    Image.asset("assets/images/search.png",scale: 2,)
                  ],
                ),
              ),
            ],
          ),),
      ),
      body:  Stack(
        children: [
           Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                BodyDataView(type: "other",),
                SizedBox(height: 30,)
              ],
            ),
          ),
          Positioned(
              bottom:0,
            child:InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OtherFilterScreen()));
              },
              child: Container(
              width: width,
              height: 48,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [buttoncolor,buttoncolor2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
               // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/filetr.png",
                    scale: 2,),
                    const SizedBox(width: 5,),
                    Text("Filter",
                    style: GoogleFonts.roboto(color: textwhitecolor,
                    fontSize: 12,fontWeight: FontWeight.w400),),
                  ],
                ),
          ),
            ))
        ],
      ),
    );
  }
}
