import 'package:flutter/material.dart';
import 'package:rentalex/screens/other/other_screen.dart';
import 'package:rentalex/screens/properties/properties_screen.dart';
import 'package:rentalex/screens/services/services_screen.dart';
import 'package:rentalex/screens/vehicles/vehicles_screen.dart';
import 'package:rentalex/screens/wanted/wanted_screen.dart';

import '../../../utils/color/colors.dart';

class ExploreCategory extends StatefulWidget {
  const ExploreCategory({Key? key}) : super(key: key);

  @override
  State<ExploreCategory> createState() => _ExploreCategoryState();
}

class _ExploreCategoryState extends State<ExploreCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          //All
          Container(
            decoration: BoxDecoration(border: Border.all(color: graycolor),
                borderRadius: BorderRadius.circular(8)),
            height: 68,
            width: 76,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/expcat1.png",
                  scale: 2,),
                const Text("All",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: textblackcolor
                  ),)
              ],
            ),
          ),

          const SizedBox(width: 10),

          //Properties
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PropertiesScreen()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              height: 68,
              width: 76,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/expcat2.png",
                    scale: 2,),
                  const Text("Properties",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textblackcolor
                    ),)
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          //Vehicles
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VehiclesScreen()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              height: 68,
              width: 76,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/expcat3.png",
                    scale: 2,),
                  const Text("Vehicles",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textblackcolor
                    ),)
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          //others
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OtherScreen()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              height: 68,
              width: 76,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/expcat4.png",
                    scale: 2,),
                  const Text("Others",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textblackcolor
                    ),)
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          //others
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ServicesScreen()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              height: 68,
              width: 76,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/service_icon.jpg",
                    scale: 1.2,),
                  const Text("Services",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textblackcolor
                    ),)
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          //others
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>WantedScreen()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(8)),
              height: 68,
              width: 76,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/wanted_icon.jpg",
                    scale: 1.2,),
                  const Text("Wanted",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textblackcolor
                    ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
