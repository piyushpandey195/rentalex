import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:rentalex/screens/login/login.dart';

import '../../bottom_nav/bottom_nav.dart';
import '../../utils/color/colors.dart';
import '../profile_before_login/profile_before_login.dart';
 // import the dots indicator package if you want to use it

class OnboardingContent {
  final String title;
  final String description;
  final String imagePath;

  OnboardingContent(
      {required this.title,
        required this.description,
        required this.imagePath});
}

List<OnboardingContent> onboardingPages = [
  OnboardingContent(
    title: 'Find The Dream Home You Aways Wanted',
    description:
    'Explore Wide Range Of Properties With Real And Verified Users',
    imagePath: 'assets/images/img1.png',
  ),
  OnboardingContent(
    title: 'Rent, Buy, Sell Your Property Instantly',
    description:
    'Free Ad Posting And Free Featuring Increase Visibility For Free',
    imagePath: 'assets/images/img2.png',
  ),
  OnboardingContent(
    title: 'Serving All Aousing Aeeds',
    description: 'Introducing Vehicles, Services And Others All At One Place',
    imagePath: 'assets/images/img3.png',
  ),
  // Add more onboarding pages as needed
];

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  double currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingPages.length,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page.toDouble();
          });
        },
        itemBuilder: (context, index) {
          return _buildOnboardingPage(onboardingPages[index]);
        },
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingContent content) {
    return Container(
      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: graycolor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //skip button
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
                },
                child: Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    color: grayfieldcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Skip",
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(
              content.title,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content.description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Stack(
            children: [
              Expanded(
                child: Image.asset(
                  content.imagePath,
                  height: MediaQuery.of(context).size.height/1.4,
                  width: 352,
                ),
              ),
              Positioned(
                bottom: 30,
                left: 80,
                right: 80,
                child: InkWell(
                  onTap: () {
                    if (currentPage < onboardingPages.length - 1) {
                      _pageController.animateToPage(
                        currentPage.toInt() + 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // If it's the last page, you can navigate to the desired screen or perform any other action.
                      // For example, you can navigate to the home screen or show a login/signup screen.
                      // You can replace the 'HomeScreen' with the desired screen.
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>BottomNavigationScreen()),
                      );
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 168,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  buttoncolor, buttoncolor2,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("Next",style: TextStyle(
                              color: whitecolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
