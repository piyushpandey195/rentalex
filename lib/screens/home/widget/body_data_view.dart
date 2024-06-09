import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/discription/discription.dart';

import '../../../utils/color/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BodyDataView extends StatefulWidget {
   BodyDataView({Key? key,this.type}) : super(key: key);

  String? type;
  @override
  State<BodyDataView> createState() => _BodyDataViewState();
}

class _BodyDataViewState extends State<BodyDataView> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    return  Expanded(
      child: SizedBox(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .6,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,),
            itemCount: 8,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  DescriptionScreen(image: widget.type == "vehicles"?"assets/images/imgvehicle.png":"assets/images/img box.png",)));
                },
                child: Container(
                  //   height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: graycolor, blurRadius: 2)
                      ]),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Stack(
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            height: 170,
                            child: widget.type == "vehicles"? Image.asset(
                              "assets/images/imgvehicle.png",
                              //scale: 2,
                              fit: BoxFit.fill,
                            ):Image.asset(
                              "assets/images/img box.png",
                              //scale: 2,
                              fit: BoxFit.fill,
                            )
                          ),

                          Positioned(
                              top:15,
                              child: Container(
                                height:25,
                                width: 61,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15))
                                ),
                                child: Center(
                                  child: Text("Boosted",
                                    style: GoogleFonts.roboto(color: textblackcolor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,),),
                                ),
                              )),

                          Positioned(
                              top:15,
                              right:10,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor:whitecolor,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset("assets/images/heart.png",
                                    scale: 2,),
                                ),

                              )),

                          Positioned(
                              bottom:0,
                              child: Container(
                                height: 25,
                                width:width/2,
                                color:Colors.white.withAlpha(150),
                                child:  Center(
                                  child: Text("Residential (Flat)",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: textblackcolor,
                                        fontSize: 14),),
                                ),

                              )),

                        ],
                      ),

                      Container(
                        height: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Lorem Lipsum",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        color: textblackcolor,
                                        fontSize: 12),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(15),
                                        border:
                                        Border.all(color: graycolor)),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Verifyed",
                                          style: GoogleFonts.roboto(
                                              color: textblackcolor,
                                              fontSize: 7,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Image.asset(
                                          "assets/images/verify.png",
                                          scale: 2,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6.0, right: 6.0),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/location.png",
                                    scale: 2,
                                  ),
                                  Text(
                                    "Plat no 11,Anand vihar",
                                    style: GoogleFonts.roboto(
                                        color: textblackcolor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 3),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                /*  RatingBar.builder(
                                   initialRating: 3, minRating: 1,
                                   direction: Axis.horizontal,
                                   allowHalfRating: true,
                                    itemCount: 1,
                                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => const SizedBox(
                                      width: 5,
                                      height: 5,
                                      child: Icon(
                                        Icons.star,
                                        size: 2,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),*/
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.amber,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.0",
                                        style: GoogleFonts.roboto(
                                            color: textblackcolor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 25,
                                    //width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(15),
                                        gradient: const LinearGradient(colors: [
                                          buttoncolor,buttoncolor2
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter)),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.all(4.0),
                                          child: Text(
                                            "₹ 6,00,0000",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight:
                                                FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
