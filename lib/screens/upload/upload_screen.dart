import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/upload_properties/upload_properties.dart';
import 'package:rentalex/screens/upload_wanted/upload_wanted_screen.dart';
import 'package:rentalex/screens/uploads_other/upload_other_screen.dart';
import 'package:rentalex/screens/uploads_services/upload_service_screen.dart';
import 'package:rentalex/screens/uploads_vehicles/uploads_vehicle_screen.dart';
import 'package:rentalex/utils/color/colors.dart';
class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: Material(
          elevation: 2,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text("Post 100 Free Ads",
                    style: GoogleFonts.roboto(color: appbarcolor1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                ),
                const SizedBox(height: 16,)
              ],
            ),
          ),
        ),
        centerTitle: true,
        shadowColor: graycolor,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(

                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const UploadPropertiesScreen()));
                     },

                    child: Column(
                      children: [
                        Container(
                          height: 129,
                          child: Image.asset("assets/images/upload1.png",scale: 2.2,),),
                        Text("Properties",style: GoogleFonts.roboto(fontSize: 16,
                        fontWeight: FontWeight.w400,
                            color: uploadtextblackcolor),)
                      ],
                    ),
                  ),
                ),

                //services
                Expanded(
                    child: InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadsServicesScreen()));
                      },
                      child: Column(
                    children: [
                      Container(
                        height: 129,
                        child: Image.asset("assets/images/upload2.png",scale: 2.2,),),
                      Text("Services",style: GoogleFonts.roboto(fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: uploadtextblackcolor),)
                    ],
                  ),
                  )
                )
              ],
            ),

            const SizedBox(height: 16),
            //vehicles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadsVehiclesScreen()));
                    },
                    child:Column(
                    children: [
                      Container(
                        height: 129,
                        child: Image.asset("assets/images/upload3.png",scale: 2.2,),),
                      Text("Vehicles",style: GoogleFonts.roboto(fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: uploadtextblackcolor),)
                    ],
                  ),)
                ),

                //other
                Expanded(
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadOtherScreen()));
                    },
                    child: Column(
                    children: [
                      Container(
                        height: 129,
                        child: Image.asset("assets/images/upload4.png",scale: 2.2,),),
                      Text("Others",style: GoogleFonts.roboto(fontSize: 16,
                          fontWeight: FontWeight.w400,
                      color: uploadtextblackcolor),)
                    ],
                  ),)
                )
              ],
            ),

            const SizedBox(height: 16),

            //wanted
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadWantedScreen()));
                  },
                  child:
                Column(
                  children: [
                    Container(
                      height: 129,
                      child: Image.asset("assets/images/upload5.png",scale: 2.2,),),
                    Text("Wanted",style: GoogleFonts.roboto(fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: uploadtextblackcolor),)
                  ],
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
