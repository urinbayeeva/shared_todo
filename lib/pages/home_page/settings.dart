import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/constants/colors.dart';
import 'package:todo_firebase/pages/home_page/inbox_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/back.png",
                width: 24,
                height: 24,
              ),
            ),
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
            Image.asset(
              "assets/images/search.png",
              width: 24,
              height: 24,
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            Center(
              child: Image.asset(
                "assets/images/avatar.png",
                width: 81,
                height: 89,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                "Kurama Musamba",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
            ),
            Center(
              child: Text(
                "@kuram1290",
                style: TextStyle(
                    color: onboardingGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/person.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Account",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/magicpen.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Theme",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/medal.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "App Icon",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/weight.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Productivity",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Image.asset(
                    "assets/images/sun.png",
                    color: onboardingGrey,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Change Mode",
                    style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: mainColor,
                value: isSwitched,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitched = newValue;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(),
            const SizedBox(
              height: 24,
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/key.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/msg.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Help Center",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
            ListTile(
              title: Row(children: [
                Image.asset(
                  "assets/images/logout.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Log Out",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ]),
              trailing: Image.asset(
                "assets/images/back_grey.png",
                width: 24,
                height: 24,
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 19,
              height: 20,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InBoxPage()));
              },
              child: Image.asset(
                "assets/images/d_inbox.png",
                width: 19,
                height: 20,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/calendar.png",
              width: 19,
              height: 20,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/category.png",
              width: 19,
              height: 20,
            ),
            label: ""),
      ]),
    );
  }
}
