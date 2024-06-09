
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';
import '../filter/other_filter/other_filter.dart';

class OtherFilterScreen extends StatefulWidget {
  const OtherFilterScreen({Key? key}) : super(key: key);

  @override
  State<OtherFilterScreen> createState() => _OtherFilterScreenState();
}

class _OtherFilterScreenState extends State<OtherFilterScreen> {
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
                        Text("Other Filter",
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
          OtherFilter (

          ),
        ],
      ),
    );
  }
}

