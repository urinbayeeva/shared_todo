import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final emailController = TextEditingController();
  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body :Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              Center(
                child: Text(
                  "Create account",
                  style: TextStyle(
                    color: mainBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              Center(
                child: Text(
                  "Create your account and feel the benefits  ",
                  style: TextStyle(
                    color: onboardingGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 48,),
              Text(
                "Username ",
                style: TextStyle(
                  color: mainBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(height: 12,),
              const SizedBox(
                width: double.infinity,
                height: 80,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF6F7F9),
                    hintText: "Enter your username",
                    hintStyle: TextStyle(
                      color: Color(0xFFA9B0C5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )
                  ),
                ),
              ),
              Text(
                "Password ",
                style: TextStyle(
                  color: mainBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(height: 12,),
              const SizedBox(
                width: double.infinity,
                height: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF6F7F9),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: Color(0xFFA9B0C5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){

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
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      );
  }
}
