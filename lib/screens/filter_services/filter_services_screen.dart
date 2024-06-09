import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/services_filter/service_filter.dart';

import '../../utils/color/colors.dart';

class FilterServicesScreen extends StatefulWidget {
  const FilterServicesScreen({Key? key}) : super(key: key);

  @override
  State<FilterServicesScreen> createState() => _FilterServicesScreenState();
}

class _FilterServicesScreenState extends State<FilterServicesScreen> {
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
                        Text("Service Filter",
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
          ServicesFilterScreen(

          ),
        ],
      ),
    );
  }
}
