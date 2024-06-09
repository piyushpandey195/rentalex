import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/filter.dart';
import 'package:rentalex/screens/filter_vehicles/filter_vehicles_screen.dart';

import '../../utils/color/colors.dart';
import '../home/widget/body_data_view.dart';

class VehiclesScreen extends StatefulWidget {
  const VehiclesScreen({Key? key}) : super(key: key);

  @override
  State<VehiclesScreen> createState() => _VehiclesScreenState();
}

class _VehiclesScreenState extends State<VehiclesScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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

                      Text("Vehicles",
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                BodyDataView(type: "vehicles",),
              ],
            ),
          ),
          Positioned(
              bottom:0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterVehicleScreen()));
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
