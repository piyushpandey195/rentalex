import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/filter/properties_filter/properties_filter.dart';

import '../../utils/color/colors.dart';

class FilterPropertiesScreen extends StatefulWidget {
  const FilterPropertiesScreen({Key? key}) : super(key: key);

  @override
  State<FilterPropertiesScreen> createState() => _FilterPropertiesScreenState();
}

class _FilterPropertiesScreenState extends State<FilterPropertiesScreen> {
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
                        Text("Properties Filter",
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
          PropertiesFilterScreen(

          ),
        ],
      ),
    );
  }
}
