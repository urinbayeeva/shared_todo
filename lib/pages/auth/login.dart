import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/constants/colors.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              Center(
                child: Text(
                  "Welcome Back!",
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
                  "Your work faster and structured with Todyapp!",
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
                "Email Address ",
                style: TextStyle(
                  color: mainBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(height: 12,),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFFF6F7F9),
                    hintText: "name@example.com",
                    hintStyle: const TextStyle(
                      color: Color(0xFFA9B0C5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    errorText: isEmailValid ? null : 'Invalid email address',
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      isEmailValid = EmailValidator.validate(value);
                    });
                  },
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
