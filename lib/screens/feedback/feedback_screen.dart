import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 100,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [appbarcolor2,appbarcolor1],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
              )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                const SizedBox(width: 8),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
                Text("Feedback",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: textwhitecolor
                ),)
              ],),

            ],
          ),
        ),
      ),
     body:  Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Help Us Improving Rentalex",
           style: GoogleFonts.roboto(fontSize: 14,
           fontWeight: FontWeight.w400,
           color:textdarkblack ),),
           
           const SizedBox(height: 8,),
           
           Container(
             height: 111,
             decoration: BoxDecoration(border: Border.all(color: graycolor,
             width: .5),
             borderRadius: BorderRadius.circular(8)),
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: TextFormField(

                 decoration: const InputDecoration(
                   border: InputBorder.none,
                   hintText: "Type..",
                 ),
               ),
             ),
           ),

           const SizedBox(height: 32),

           Container(
             height: 48,
             decoration: BoxDecoration(
               gradient: const LinearGradient(
                 colors: [buttoncolor,buttoncolor2],
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter
               ),
               borderRadius: BorderRadius.circular(8),
             ),
             child: Center(
               child: Text("Submit",style: GoogleFonts.roboto(
                 fontWeight: FontWeight.w500,
                 fontSize: 16,
                 color: textwhitecolor
               ),),
             ),
           )
         ],
       ),
     ),
    );
  }
}
