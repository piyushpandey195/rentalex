import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color/colors.dart';

class AdsHistoryScreen extends StatefulWidget {
  const AdsHistoryScreen({Key? key}) : super(key: key);

  @override
  State<AdsHistoryScreen> createState() => _AdsHistoryScreenState();
}

class _AdsHistoryScreenState extends State<AdsHistoryScreen> {
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
              end: Alignment.centerRight,
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                const SizedBox(width: 8),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
                Text("Ads History",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: textwhitecolor
                ),)
              ],),

            ],
          ),
        ),
      ),

       body: Column(
         children: [

           Padding(
             padding: const EdgeInsets.all(16.0),
             child: Image.asset("assets/images/ads_history.png"),
           ),
        //   const SizedBox(height: 16,),
           Padding(
             padding:  EdgeInsets.all(16.0),
             child: Stack(
               children: [
                 GestureDetector(
                   onTap: (){
                     _showBottomSheet(width);
                   },
                   child: Container(
                     decoration: BoxDecoration(
                         gradient: const LinearGradient(colors: [
                           buttoncolor,buttoncolor2
                         ],
                             begin: Alignment.centerLeft,
                             end: Alignment.centerRight),

                         borderRadius: BorderRadius.circular(8)),
                     height: 40,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset(
                           "assets/images/boostup.png",
                           scale: 2,
                         ),
                         const SizedBox(width: 8,),
                         Text(
                           "Free 1Hour Boost-Up",
                           style: GoogleFonts.roboto(
                               fontSize: 12,
                               fontWeight: FontWeight.w500,
                               color: textwhitecolor),
                         )
                       ],
                     ),
                   ),
                 ),
                 Positioned(
                     right: 0,
                     child: Container(
                       height: 22,
                       width: 31,
                       decoration: const BoxDecoration(
                           gradient:  LinearGradient(
                               colors: [
                                 appbarcolor2,
                                 appbarcolor1,
                               ],
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight),
                           borderRadius: BorderRadius.only(topRight: Radius.circular(8),
                               bottomLeft: Radius.circular(8))
                       ),
                       child: Center(
                         child: Text("AD",
                           style:GoogleFonts.roboto(
                               fontWeight: FontWeight.w400,
                               fontSize: 12,
                               color: textwhitecolor
                           ),),
                       ),
                     ))
               ],
             ),
           ),

         ],
       ),
    );
  }

  void _showBottomSheet(width) {
    showModalBottomSheet(
      useSafeArea: false,
      context: context,
      builder: (BuildContext context) {
        return  Container(
            width: width,
            height: MediaQuery.of(context).size.height/2.1,
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: graycolor
                  )
                ]),
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){

                  return   Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: graycolor,
                                  width: .5),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/video.png"),
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Reward Video Points",style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: textdarkblack
                                      ),),
                                      Text("07-05-2023 19:37:32",style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: graycolor
                                      ),)
                                    ],
                                  )

                                ],
                              ),
                              Container(
                                width: 76,
                                height: 64,
                                decoration:  BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    gradient: const LinearGradient(
                                        colors: [
                                          appbarcolor2,appbarcolor1
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Center(child:
                                Text("+5",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textwhitecolor
                                  ),),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })
        );
      },
    );
  }
}
