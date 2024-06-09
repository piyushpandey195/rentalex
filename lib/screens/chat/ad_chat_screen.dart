import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/chat/chat_screen,dart.dart';

import '../../utils/color/colors.dart';
import '../login/login.dart';
import 'chat_screen.dart';

class AdChatScreen extends StatefulWidget {
  const AdChatScreen({Key? key}) : super(key: key);

  @override
  State<AdChatScreen> createState() => _AdChatScreenState();
}

class _AdChatScreenState extends State<AdChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(137.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Container(
                height:137,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(
                            Icons.arrow_back
                          )),

                          const SizedBox(width: 10,),

                          Text("Anand Tower",style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: textdarkblack
                          ),),

                        ],
                      ),



                      InkWell(
                        onTap: (){
                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                        },
                        child: const CircleAvatar(
                          backgroundColor: graycolor,
                        )
                      )
                    ],),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,
                    top: 115),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0
                      )]
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/location.png",
                          scale: 2,),
                        const SizedBox(width: 5,),
                        Text("H-150 sector 63  Noida",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          ),)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),


      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: graycolor
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: graycolor,
                        ),
                        trailing: Image.asset("assets/images/ext.png",
                          scale: 2,),
                        title: Text("Lorem Lipsum",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: textdarkblack
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 50,
            right: 50,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatList() ));
              },
              child: Container(
                height: 40,
                width: 98,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        colors: [
                          appbarcolor2,appbarcolor1
                        ]

                    )
                ),
                child: const Center(
                  child: Text("Boost - Up",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textwhitecolor
                    ),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
