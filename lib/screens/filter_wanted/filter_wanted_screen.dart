import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';
import '../filter/wanted_filter/wanted_filter_screen.dart';

class FilterWantedScreen extends StatefulWidget {
  const FilterWantedScreen({Key? key}) : super(key: key);

  @override
  State<FilterWantedScreen> createState() => _FilterWantedScreenState();
}

class _FilterWantedScreenState extends State<FilterWantedScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
                      Text("Wanted Filter",
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
          WantedFilterScreen(

          ),
        ],
      ),
    );
  }
}
