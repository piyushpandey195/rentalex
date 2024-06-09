import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/vehicles_filter/vehicle_filter.dart';

import '../../utils/color/colors.dart';

class FilterVehicleScreen extends StatefulWidget {
  const FilterVehicleScreen({Key? key}) : super(key: key);

  @override
  State<FilterVehicleScreen> createState() => _FilterVehicleScreenState();
}

class _FilterVehicleScreenState extends State<FilterVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            height: 100,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back)),
                        Text("Vehicle Filter",
                          style: GoogleFonts.roboto(
                              color: textdarkblack,
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
      body: Column(
        children: [
          VehiclesFilterScreen(

          ),
        ],
      ),
    );
  }
}
