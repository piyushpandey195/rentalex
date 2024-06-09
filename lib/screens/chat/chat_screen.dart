import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/utils/color/colors.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(104.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 104,
          decoration: const BoxDecoration(
              color: Colors.white, boxShadow: [BoxShadow(blurRadius: 2)]),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 16,
            top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Anand Tower",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: textdarkblack),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                    },
                    child: const CircleAvatar(
                      backgroundColor: graycolor,
                    ))
              ],
            ),
          ),
        ),
      ),
    ),

    body: ListView(
      children: [
        ListView.builder(
          itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index){
          return
        Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16),
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
                trailing: Image.asset("assets/images/delete.png",
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
        );})
      ],
    ),);
  }
}
