import 'package:flutter/material.dart';
import 'package:rentalex/screens/login/login.dart';
import 'package:rentalex/utils/color/colors.dart';

import '../screens/chat/ad_chat_screen.dart';
import '../screens/chat/chat_screen,dart.dart';
import '../screens/home/home_screen.dart';
import '../screens/my_ads/my_ads_screen.dart';
import '../screens/profile_before_login/profile_before_login.dart';
import '../screens/upload/upload_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentTab = 3;
  final List<Widget> screens = [
    const HomeScreen(),
    const MyAdsScreen(),
    AdChatScreen(),
   // const ChatScreen(),
    const ProfileBeforeLogin(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProfileBeforeLogin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

    floatingActionButton: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: FloatingActionButton(
        shape:  BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(28)
        ),
        disabledElevation: 100,
        backgroundColor: Colors.white,
        child: Image.asset("assets/images/addcircle.png",scale: 1,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UploadScreen()));
        },
      ),
    ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          decoration: const BoxDecoration(

          ),
          height: 65,
          child: BottomAppBar(
            elevation: 0,
            color: whitecolor,
            height:70,
          //  shape: const CircularNotchedRectangle(),
           // notchMargin: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomeScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/home.png',
                            scale: 1.8,
                            color: currentTab == 0 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: currentTab == 0 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),

                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = MyAdsScreen();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/ads.png',
                            scale: 1.8,
                            color: currentTab == 1 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Ads',
                            style: TextStyle(
                                color:
                                    currentTab == 1 ? Colors.red : Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const AdChatScreen();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/chat.png',
                            scale: 1.8,
                            color: currentTab == 2 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                              color: currentTab == 2 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),


                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfileBeforeLogin();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/profile.png',
                            scale: 2.1,
                            color: currentTab == 3 ? appbarcolor1 : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color:
                                    currentTab == 3 ? Colors.red : Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
