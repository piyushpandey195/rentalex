import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';
import '../filter/filter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    appbarcolor1,
                    appbarcolor2,
                  ], begin: Alignment.topCenter, end: Alignment.centerLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,right: 6,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                             IconButton(onPressed: (){
                               Navigator.pop(context);
                             },
                                 icon: const Icon(Icons.arrow_back,color: Colors.white,)),

                          Text(
                            "Select Address",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 100),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             IconButton(onPressed: (){}, icon: const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),),

                            Text(
                              "H-150,D - block Sector - 63 noida",
                              style: GoogleFonts.roboto(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.edit,
                          size: 20,
                        ),),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      
      body: Stack(
        children: [
          Center(child: Text("Map Screen"),
          ),
          Positioned(child: Column(
            children: [
            SizedBox(),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 64,
              decoration: const BoxDecoration(gradient: LinearGradient(
                colors: [buttoncolor,buttoncolor2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )),
              child: Center(child: Text("update",
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
              fontSize: 14,
              color: textwhitecolor),),),
            )
          ],))
        ],
      )

    );
  }
}
