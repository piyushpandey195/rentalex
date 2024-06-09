import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/utils/color/colors.dart';

import '../../model/chat/chat_model.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<ChatMessage> messages = [
    ChatMessage(
        messageContent:
        "Hi, Welcome to Namur Support. kjhghjffkhckhghgkchgbvkghf",
        messageType: "sender"),
    ChatMessage(messageContent: "Hi, Welcome To Rentalx Support.,", messageType: "receiver"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 104,
          decoration: const BoxDecoration(color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 1,
            color: graycolor)
          ]),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back)),
                  const SizedBox(width: 8,),
                  Text("Anand Tower",
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                  fontSize: 14,
                  ),),
                ],
              ),

              const CircleAvatar(
                radius: 20,
                backgroundColor: graycolor,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text("Today",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500,
            fontSize: 12,
            color: graycolor),),),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14,  bottom: 8),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      messages[index].messageType != "receiver"
                      ?  Column(
                            children: [
                              Image.asset("assets/images/send_message.png",
                              scale: 2,),
                              Text("1:30 pm",style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: graycolor
                              ),)
                            ],
                          ):
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              borderRadius: messages[index].messageType == "receiver"? const BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                //  bottomRight: Radius.
                              ):const BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                //  bottomRight: Radius.
                              ),
                              color: (messages[index].messageType == "receiver"
                                  ? appbarcolor1
                                  : graycolor),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              messages[index].messageContent,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          messages[index].messageType == "receiver"?
                          Column(
                            children: [
                              Text("1:30 pm",style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: graycolor
                              ),)
                            ],
                          ):
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              borderRadius: messages[index].messageType == "receiver"? const BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                //  bottomRight: Radius.
                              ):const BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                //  bottomRight: Radius.
                              ),
                              color: (messages[index].messageType == "receiver"
                                  ? appbarcolor1
                                  : graycolor),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              messages[index].messageContent,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        Container(
          height: 38,
          decoration: BoxDecoration(
            color: graycolor
          ),
          child: Center(
            child: RichText(text: TextSpan(children: [
              TextSpan(text: "Still Have An Issue? Chat With Us ?",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: pureblackcolor
              )),
              TextSpan(text: "Chat With Us",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff3D7B15),
                  ))
            ]),),
          ),
        )
        ],
      ),
    );

  }
}
