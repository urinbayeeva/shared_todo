import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/constants/colors.dart';

class OnBoardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;

  const OnBoardItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.all(28),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: onboardingGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              textAlign: TextAlign.center,
            ),
          ]),
        )
      ],
    );
  }
}
