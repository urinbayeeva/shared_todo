import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/pages/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/onboarding_page/widgets/onboard_item.dart';

import '../auth/login.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: PageView(
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/images/final_onboard.png", fit: BoxFit.fitHeight),
                Column(
                  children: [
                    const SizedBox(height: 30,),
                    const OnBoardItem(
                      image: "assets/images/onbrd.png",
                      title: "Your convenience in\nmaking a todo list",
                      subtitle:
                      "Here's a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.",
                      color: onboardingGrey,
                    ),
                    const SizedBox(height: 10,),
                    Image.asset("assets/images/slider.png", width: 53, height: 8,),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 60,),
                    const OnBoardItem(
                      image: "assets/images/final.png",
                      title: "Find the practicality in\nmaking your todo list",
                      subtitle:
                      "Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity",
                      color: onboardingGrey,
                    ),
                    const SizedBox(height: 10,),
                    Image.asset("assets/images/slider_second.png", width: 53, height: 8,),
                  ],
                ),
            Column(
              children: [
                const SizedBox(height: 60,),
                Image.asset("assets/images/last_onbrd.png"),
                const SizedBox(height: 60,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    width: 340,
                    height: 56,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/email.png", width: 20, height: 18,),
                          Text(
                            "Continue with email",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                          const SizedBox(height: 16,),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    children: [
                      Container(width: 101, height: 1, color: const Color(0xFFE0E5ED),),
                      const SizedBox(width: 16,),
                      const Text("or continue with  ",
                        style: TextStyle(
                            color: Color(0xFF767E8C),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Container(width: 101, height: 1, color: const Color(0xFFE0E5ED),),
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                         width: 155,
                         height: 56,
                         decoration: BoxDecoration(
                           color: Color(0xFFF3F5F9),
                           borderRadius: BorderRadius.circular(16)
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset("assets/images/facebook.png", width: 20, height: 18,),
                             SizedBox(width: 8,),
                             const Text("Facebook",
                             style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                               color: mainBlack
                             ),
                             )
                           ],
                         ),
                       ),
                  Container(
                    width: 155,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xFFF3F5F9),
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", width: 20, height: 18,),
                        SizedBox(width: 8,),
                        const Text("Google",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: mainBlack
                          ),
                        )
                      ],
                    ),
                  ),
                    ],
                  ),
                )
              ],
            ),
              ],
            ),
          ),
          if (currentIndex != 0 && currentIndex!= 3) Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                width: 340,
                height: 56,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                ),
              ),
            ),
          ),
          if(currentIndex!=0 && currentIndex!= 3) const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
