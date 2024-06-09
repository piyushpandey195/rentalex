import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/utils/color/colors.dart';

class RatingProfileScreen extends StatefulWidget {
  const RatingProfileScreen({Key? key}) : super(key: key);

  @override
  State<RatingProfileScreen> createState() => _RatingProfileScreenState();
}

class _RatingProfileScreenState extends State<RatingProfileScreen> {
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
            boxShadow: [BoxShadow(blurRadius: 2, color: graycolor)],
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lorem Lipsum",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: textdarkblack),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: [
        const SizedBox(height: 64),
        Center(
          child: Stack(
            children: [
              Container(padding: EdgeInsets.all(8),
                height: 100,
                width: 100,
                decoration: BoxDecoration(

                    color: Colors.white, borderRadius: BorderRadius.circular(100)),
                child: Image.asset("assets/images/rating_profile.png"),
              ),
              Positioned(
                  bottom: 10,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: textorangecolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 12,
                          weight: 30,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            "Lorem Lipsum",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: textdarkblack),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(
            children: [
              Text(
                "Rateing",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: textblackcolor),
              ),
              const SizedBox(width: 5),
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
              const SizedBox(width: 5),
              Text(
                "4.0",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: textgreycolor),
              ),
            ],
          ),
        ]),

        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: graycolor)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("30",style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: pureblackcolor
                        ),),
                        Text("Listings",style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: pureblackcolor
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("12",style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: pureblackcolor
                        ),),
                        Text("Sold",style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: pureblackcolor
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
       const SizedBox(width: 16),
              Expanded(
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: graycolor)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("28",style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: pureblackcolor
                        ),),
                        Text("Reviews",style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: pureblackcolor
                        ),),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),


        ListView.builder(
             itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
           return Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
          child: Material(
            elevation: 4,
            color: graycolor,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: graycolor),
                  borderRadius: BorderRadius.circular(20),
              color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    Container(
                        height: 121,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/adsimg.png",
                          fit: BoxFit.fill,
                        )),

                    //detail
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lorem Lipsum",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 88,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [buttoncolor, buttoncolor2],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                                "₹ 75,00,000",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: textwhitecolor),
                              )),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/location.png",
                          scale: 2,
                        ),

                        const SizedBox(width: 0),

                        //switch
                        const SizedBox(width: 5),
                        Text(
                          "Noida 63 H-150 ",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: textgreycolor),
                        ),
                      ],
                    ),

                    //Rating
                    const SizedBox(height: 0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Rateing",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textblackcolor),
                            ),
                            const SizedBox(width: 5),
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
                            const SizedBox(width: 5),
                            Text(
                              "4.0",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: textgreycolor),
                            ),
                          ],
                        ),

                      ],
                    ),

                    //view

                    Row(
                      children: [
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Views",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: textblackcolor),
                        ),
                        Text(
                          "     (100+)",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: buttoncolor2),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
            }),
      ]),
    );
  }
}
