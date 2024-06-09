import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/subscription_plan_model.dart';
import '../../utils/color/colors.dart';


class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> with TickerProviderStateMixin{

  List<PlanModel> planlist  = [
    PlanModel(
    price: "299",
    title: "Gold",
      image: "assets/images/yellowrec.png",
     ),
    PlanModel(
      price: "299",
      title: "PLATINUM",
        image: "assets/images/plan.png"
    ),
    PlanModel(
      price: "299",
      title: "Silver",
        image: "assets/images/greenrec.png"
    ),
  ];
  var item;
  int currentindex = 0;
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
                Text(
                  "Subscription Plan",style: GoogleFonts.roboto(
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
          child: Container(
            height: 109,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: graycolor,
              width: .5),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 2
                ),
              ]
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text("Details Of Package",style: GoogleFonts.roboto(
                   fontWeight: FontWeight.w500,
                   fontSize: 16,
                   color: textorangecolor
                 ),),
                const SizedBox(height:8),
                Text("Buy Package To Display  A Purchased\n Ads At The Top",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: textdarkblack
                ),)
              ],
            ),
          ),
        ),


        const SizedBox(height: 16,),

        SizedBox(
          height: 320,
          width: width,
          child: PageView.builder(
           // pageSnapping: false,
           //   padEnds: false,
              itemCount: planlist.length,
              scrollDirection: Axis.horizontal,
              controller: PageController(
                initialPage: 0,
                viewportFraction: .6
              ),
              onPageChanged: (value){
                   currentindex= value;
                   setState(() {

                   });
              },
              itemBuilder: (context, index){

                return   Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 205,
                        height: 320,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                  ),
                                ]
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 16),
                                      Text("${planlist.elementAt(index).title}",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: index == 0? textyellowcolor: index == 1? textorangecolor: textgreencolor
                                        ),),
                                      const SizedBox(height: 16),
                                      Text("${planlist.elementAt(index).price}",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: index == 0? textyellowcolor: index == 1? textorangecolor: textgreencolor
                                        ),),
                                      Text("Validity 30 Days",
                                        style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: index == 0? textyellowcolor: index == 1? textorangecolor: textgreencolor
                                        ),)
                                    ],
                                  ),
                                ),
                                const SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 15,
                          child: Stack(
                              children: [
                                Image.asset("${planlist.elementAt(index).image}",scale: 2.1,),
                                Positioned(
                                    bottom: 32,
                                    child: SizedBox(
                                      width: 205,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text("BUY THIS PACK TO",style:
                                            GoogleFonts.roboto(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textwhitecolor
                                            ),),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 16.0,right: 16),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Icon(Icons.circle,
                                                    color: textwhitecolor,size: 4,),
                                                ),
                                                Expanded(
                                                  child: Text("Boost Any Of Your AD In Search Results And Home Screen For 10 Days.",style:
                                                  GoogleFonts.roboto(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: textwhitecolor
                                                  ),),
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(height: 8),

                                          Padding(
                                            padding:  EdgeInsets.only(left: 16.0,right: 16),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Icon(Icons.circle,
                                                    color: textwhitecolor,size: 4,),
                                                ),
                                                Expanded(
                                                  child: Text("Get A Report Of Who Viewed Your AD.",style:
                                                  GoogleFonts.roboto(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: textwhitecolor
                                                  ),),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),


                              ])),
                      Positioned(
                          bottom: 0,
                          child: SizedBox(
                            width: 205,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 44,
                                  width: 44,
                                  decoration: BoxDecoration(
                                      /*gradient: const LinearGradient(
                                          colors: [appbarcolor2,appbarcolor1],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight
                                      ),*/
                                  color: index == 0? textyellowcolor: index == 1? textorangecolor: textgreencolor,
                                      border: Border.all(color: textwhitecolor,
                                          width: 3),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.arrow_downward,
                                      color: textwhitecolor,),
                                  ),
                                ),
                              ],
                            ),
                          )),

                      Positioned(
                          right:8,
                          top: 80,
                          child: Image.asset("assets/images/Saly.png",
                            scale: 2.2,))
                    ],
                  ),
                );
          }),
        ),
        const Spacer(),
              TabPageSelector(
                controller: TabController(
                  length: planlist.length,
                  initialIndex: currentindex,
                  vsync:this,
                ),
                color: graycolor,
                selectedColor: textorangecolor,
                indicatorSize: 12,
                borderStyle: BorderStyle.none,
              ),
          const Spacer(
              ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 48,
            width: width,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [buttoncolor,buttoncolor2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text("Purchase",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textwhitecolor,
              ),),
            ),
          ),
        ),

        const Spacer(),
      ],
    ),);
  }
}
