import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/filter.dart';
import 'package:rentalex/screens/home/widget/body_data_view.dart';
import 'package:rentalex/screens/home/widget/explore_category.dart';
import 'package:rentalex/screens/location/location_screen.dart';
import 'package:rentalex/screens/services/services_screen.dart';

import '../../utils/color/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   var  height =  MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(137.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                height: 137,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    appbarcolor1,
                    appbarcolor2,
                  ], begin: Alignment.topCenter, end: Alignment.centerLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 16,right: 6,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/logologin.png",
                                scale: 3,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "RENTALEX",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));
                            },
                              child: Image.asset(
                                "assets/images/new lo.png",
                                scale: 1,
                                color: Colors.white,
                              ),
                            ),

                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen(type: "properties")));
                            },
                              icon: const Icon(Icons.filter_alt_sharp,
                              color: Colors.white,))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 115),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 8),
        child: Column(
          children: [
            const SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore categories",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w500,
                  color: textblackcolor),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ServicesScreen()));
                  },
                    child: const Icon(Icons.arrow_forward))
              ],
            ),
            const SizedBox(height: 8),
            const ExploreCategory(),
            const SizedBox(height: 16),
               BodyDataView(type: "all",),
          ],
        ),
      ),
    );
  }
}
