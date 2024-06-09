import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/about_us/about_us_screen.dart';
import 'package:rentalex/screens/advertising_space_on_rentlex/advertising_screen.dart';
import 'package:rentalex/screens/contact_us/contact_us_screen.dart';
import 'package:rentalex/screens/favourite/favourite_screen.dart';
import 'package:rentalex/screens/my_order/my_order_screen.dart';
import 'package:rentalex/screens/terms&condition/terms_condition_screen.dart';
import 'package:accordion/accordion.dart';
import '../../../utils/color/colors.dart';
import '../../faq/faq_screen.dart';
import '../../feedback/feedback_screen.dart';
import '../../privacy_policy/privacy_policy_screen.dart';
import '../../rating_profile/rating_profile_screen.dart';
import '../../subscription_plan/subscription_plan_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_share/flutter_share.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {

  Future<void> share() async {
    await FlutterShare.share(
      title: 'Example share',
      text: 'Rentlex',
      linkUrl: 'https://play.google.com/store/search?q=rentalex&c=apps',
      // chooserTitle: 'Example Chooser Title'
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //packages and Invoice
        Accordion(
          paddingListBottom: 0,
            paddingListTop: 0,
            maxOpenSections: 1,
            headerBackgroundColorOpened: Colors.white,
            contentBorderColor: Colors.white,
            children: [
              AccordionSection(
              //  contentBackgroundColor: graycolor,
               // isOpen: true,
                rightIcon: const Icon(Icons.keyboard_arrow_right),
                headerBackgroundColor: Colors.white,
                headerBackgroundColorOpened: Colors.white,
                header:SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/package.png",
                        scale: 1.7,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "Packages And Invoice",
                        style:
                        GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],),
                ),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SubscriptionPlanScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Image.asset(
                                "assets/images/boostupicon.png",
                                scale: 1.7,
                              ),
                              const SizedBox(width: 16),
                              Text(
                                "Boost Up Pack",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300, fontSize: 12),
                              ),
                            ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyOrderScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/myorder.png",
                                  scale: 1.7,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "My Orders",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                contentHorizontalPadding: 0,
                contentBorderWidth: 0,
                // onOpenSection: () => print('onOpenSection ...'),
                // onCloseSection: () => print('onCloseSection ...'),
              ),
            ]),

        //Favorite
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavouriteScreen()));
            },
            child: ListTile(
              leading: Image.asset(
                "assets/images/favorite.png",
                scale: 1.7,
              ),
              title: Text(
                "Favorite",
                style:
                GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),

        //Account setting

        Accordion(
            paddingListBottom: 0,
            paddingListTop: 0,
            maxOpenSections: 1,
            headerBackgroundColorOpened: Colors.white,
            contentBorderColor: Colors.white,
            children: [
              AccordionSection(
                //  contentBackgroundColor: graycolor,
               // isOpen: true,
                rightIcon: const Icon(Icons.keyboard_arrow_right),
                headerBackgroundColor: Colors.white,
                headerBackgroundColorOpened: Colors.white,
                header:SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/account.png",
                        scale: 1.7,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "Account Setting",
                        style:
                        GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],),
                ),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: InkWell(
                        onTap: (){
                          Get.defaultDialog(
                            contentPadding: const EdgeInsets.all(16),
                           // title: "",
                            titleStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              fontSize: 0,
                              color: textdarkblack,
                              textStyle: const TextStyle()
                            ),
                            radius: 0,
                            content: Column(
                              children: [
                                Text("Are You Sure You Want To Deactivate Your Account?",
                                style:GoogleFonts.roboto(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    color: textdarkblack,
                                    textStyle: TextStyle()
                                ) ,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  Text("No",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: textgreencolor
                                  ),),
                                  const SizedBox(width: 32),
                                  Text("Yes",
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: textgreencolor
                                      ),)
                                ],),
                              ],
                            )
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/boostupicon.png",
                                  scale: 1.7,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Deactivate Account",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child: InkWell(
                        onTap: (){
                          Get.defaultDialog(
                              contentPadding: const EdgeInsets.all(16),
                              // title: "",
                              titleStyle: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 0,
                                  color: textdarkblack,
                                  textStyle: const TextStyle()
                              ),
                              radius: 0,
                              content: Column(
                                children: [
                                  Text("Are You Sure Want To Delete Your User Data?",
                                    style:GoogleFonts.roboto(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: textdarkblack,
                                        textStyle: TextStyle()
                                    ) ,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("No",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: textgreencolor
                                        ),),
                                      const SizedBox(width: 32),
                                      Text("Yes",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: textgreencolor
                                        ),)
                                    ],),
                                ],
                              )
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/delete_data.png",
                                  scale: 1.7,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Delete My User Data",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                contentHorizontalPadding: 0,
                contentBorderWidth: 0,
                // onOpenSection: () => print('onOpenSection ...'),
                // onCloseSection: () => print('onCloseSection ...'),
              ),
            ]),

        //advertising spaces on rentalex
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdvertisingScreen()));
                  },
            child: ListTile(
              leading: Image.asset(
                "assets/images/advertising.png",
                scale: 1.7,
              ),
              title: Text(
                "Advertising Spaces On Rentalex",
                style:
                    GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),

        const SizedBox(height: 5),

        //rate and review
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: ListTile(
            leading: Image.asset(
              "assets/images/rate.png",
              scale: 1.7,
            ),
            title: Text(
              "Rate And Review",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Get.defaultDialog(
                title: "Rate Us",
                titleStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                titlePadding: EdgeInsets.only(right: 200,top: 8),
               radius: 0,
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      Text("would you like to put your review on the play store? this would mativate us to keep evolving the app.",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: textdarkblack
                  ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("No Thank you!",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),),
                            Text("Okay",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                color: textorangecolor
                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              );
            },
          ),
        ),

        //support
        Accordion(
            paddingListBottom: 0,
            paddingListTop: 0,
            maxOpenSections: 1,
            headerBackgroundColorOpened: Colors.white,
            contentBorderColor: Colors.white,
            children: [
              AccordionSection(
                //  contentBackgroundColor: graycolor,
              //  isOpen: true,
                rightIcon: const Icon(Icons.keyboard_arrow_right),
                headerBackgroundColor: Colors.white,
                headerBackgroundColorOpened: Colors.white,
                header:SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/support.png",
                        scale: 1.7,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "Support",
                        style:
                        GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],),
                ),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const FAQScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/faq.png",
                                  scale: 2,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "FAQ",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const TermsAndConditionScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/stopwatch.png",
                                  scale: 2,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Terms And Conditions",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child:InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrivacyPolicyScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/privacy.png",
                                  scale: 2,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Privacy Policy",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child:InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutUsScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/myorder.png",
                                  scale: 2,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "About Us",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 8),
                      child:InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactUsScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/information.png",
                                  scale: 2,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "Contact Us",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300, fontSize: 12),
                                ),
                              ],),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                contentHorizontalPadding: 0,
                contentBorderWidth: 0,
                // onOpenSection: () => print('onOpenSection ...'),
                // onCloseSection: () => print('onCloseSection ...'),
              ),
            ]),



        const SizedBox(height: 5),

        //share app
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: ListTile(
            leading: Image.asset(
              "assets/images/share.png",
              scale: 1.7,
            ),
            title: Text(
              "Share App",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              share();
            },
          ),
        ),

        const SizedBox(height: 5),

        //feedback
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedBackScreen()));
            },
            child: ListTile(
              leading: Image.asset(
                "assets/images/feedback.png",
                scale: 1.7,
              ),
              title: Text(
                "Feedback",
                style:
                    GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),

        const SizedBox(height: 5),

        //introduction
        Padding(
          padding: const EdgeInsets.only(left: 9.0,),
          child: ListTile(
            leading: Image.asset(
              "assets/images/introduction.png",
              scale: 1.7,
            ),
            title: Text(
              "Introduction",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingProfileScreen()));
            },
          ),
        ),
      ],
    );
  }
}

