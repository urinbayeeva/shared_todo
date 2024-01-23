import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InBoxPage extends StatefulWidget {
  const InBoxPage({super.key});

  @override
  State<InBoxPage> createState() =>
      _InBoxPageState();
}

class _InBoxPageState
    extends State<InBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding:
              const EdgeInsets.all(24),
          child: Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
              children: [
                Image.asset(
                  "assets/images/back.png",
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Inbox",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.w600,
                    fontFamily:
                        GoogleFonts
                                .poppins()
                            .fontFamily,
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
      body: Padding(
        padding:
            const EdgeInsets.all(24),
        child: Column(
          children: [
            Image.asset(
                "assets/images/inbox.png")
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor:
              const Color(0xFF24A19C),
          foregroundColor: Colors.white,
          elevation: 2.0,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .endFloat,
      bottomNavigationBar:
          BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 19,
              height: 20,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/d_inbox.png",
              width: 19,
              height: 20,
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
