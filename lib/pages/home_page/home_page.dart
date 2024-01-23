// ignore_for_file: unnecessary_string_interpolations, unnecessary_const, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:todo_firebase/pages/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:todo_firebase/pages/home_page/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selectedFlag = false;
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  String _formatDate() {
    DateTime now = DateTime.now();
    String day = DateFormat('d').format(now);
    String month = DateFormat('MMMM').format(now);
    String year = DateFormat('y').format(now);

    return '$day, $month, $year';
  }

  String _formatDay() {
    DateTime now = DateTime.now();
    DateTime tomorrow = now.add(const Duration(days: 1));

    int daysUntilWeekend = (DateTime.saturday - tomorrow.weekday + 7) % 7;
    DateTime nextWeekend = tomorrow.add(Duration(days: daysUntilWeekend));

    return '${DateFormat('EEEE').format(nextWeekend)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 24, top: 24),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      color: mainBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Best platform for creating to-do lists   ",
                  style: TextStyle(
                      color: onboardingGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              child: Image.asset(
                "assets/images/setting.png",
                width: 24,
                height: 24,
              ),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 148,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 0.2)
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF24A19C),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF24A19C),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(0)),
                                  ),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Container(
                                        color: Colors.white,
                                        height: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.all(24),
                                          child: Column(children: [
                                            const TextField(
                                              decoration: InputDecoration(
                                                  hintText:
                                                      'eg : Meeting with client',
                                                  border: InputBorder.none,
                                                  fillColor: Colors.transparent,
                                                  filled: true,
                                                  hintStyle: TextStyle(
                                                      color: onboardingGrey,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            const TextField(
                                              decoration: InputDecoration(
                                                  hintText: 'Description',
                                                  border: InputBorder.none,
                                                  fillColor: Colors.transparent,
                                                  filled: true,
                                                  hintStyle: TextStyle(
                                                      color: onboardingGrey,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        "assets/images/direct.png",
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 16,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          showModalBottomSheet(
                                                            context: context,
                                                            isScrollControlled:
                                                                true,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return Container(
                                                                height: 680,
                                                                width: double
                                                                    .infinity,
                                                                color: Colors
                                                                    .white,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          24,
                                                                      vertical:
                                                                          8),
                                                                  child: Column(
                                                                    children: [
                                                                      Center(
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/images/chiziq.png",
                                                                          width:
                                                                              54,
                                                                          height:
                                                                              5,
                                                                        ),
                                                                      ),
                                                                      // const SizedBox(
                                                                      //   height: 20,
                                                                      // ),
                                                                      ListTile(
                                                                        title: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/sun.png",
                                                                                    width: 24,
                                                                                    height: 24,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 12,
                                                                                  ),
                                                                                  const Text(
                                                                                    "Today",
                                                                                    style: TextStyle(
                                                                                      color: mainBlack,
                                                                                      fontSize: 16,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              Text(
                                                                                "${_formatDate()}",
                                                                                style: const TextStyle(color: onboardingGrey, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              )
                                                                            ]),
                                                                      ),
                                                                      // const SizedBox(
                                                                      //   height: 8,
                                                                      // ),
                                                                      ListTile(
                                                                        title: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/cloud.png",
                                                                                    width: 24,
                                                                                    height: 24,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 12,
                                                                                  ),
                                                                                  const Text(
                                                                                    "Tomorrow",
                                                                                    style: TextStyle(
                                                                                      color: mainBlack,
                                                                                      fontSize: 16,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              const Text(
                                                                                "Wed",
                                                                                style: TextStyle(color: onboardingGrey, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              )
                                                                            ]),
                                                                      ),
                                                                      // const SizedBox(
                                                                      //   height: 8,
                                                                      // ),
                                                                      ListTile(
                                                                        title: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/car.png",
                                                                                    width: 24,
                                                                                    height: 24,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 12,
                                                                                  ),
                                                                                  const Text(
                                                                                    "This weekend",
                                                                                    style: TextStyle(
                                                                                      color: mainBlack,
                                                                                      fontSize: 16,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              const Text(
                                                                                "Mon ",
                                                                                style: TextStyle(color: onboardingGrey, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              )
                                                                            ]),
                                                                      ),
                                                                      // const SizedBox(
                                                                      //   height: 8,
                                                                      // ),
                                                                      ListTile(
                                                                        title: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Image.asset(
                                                                                    "assets/images/reserve.png",
                                                                                    width: 24,
                                                                                    height: 24,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 12,
                                                                                  ),
                                                                                  const Text(
                                                                                    "Next weekend",
                                                                                    style: TextStyle(
                                                                                      color: mainBlack,
                                                                                      fontSize: 16,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              const Text(
                                                                                "10 Apr 2024",
                                                                                style: TextStyle(color: onboardingGrey, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              )
                                                                            ]),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            16,
                                                                      ),
                                                                      const Divider(),
                                                                      const SizedBox(
                                                                        height:
                                                                            16,
                                                                      ),
                                                                      SfDateRangePicker(
                                                                        onSelectionChanged:
                                                                            _onSelectionChanged,
                                                                        selectionMode:
                                                                            DateRangePickerSelectionMode.range,
                                                                        initialSelectedRange: PickerDateRange(
                                                                            DateTime.now().subtract(const Duration(days: 4)),
                                                                            DateTime.now().add(const Duration(days: 3))),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            10,
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceAround,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                125,
                                                                            height:
                                                                                56,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: const Color(
                                                                                0xFFF3F5F9,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(16),
                                                                            ),
                                                                            child:
                                                                                const Center(
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(8.0),
                                                                                child: const Row(children: [
                                                                                  Icon(
                                                                                    Icons.add,
                                                                                    color: mainColor,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 8,
                                                                                  ),
                                                                                  Text(
                                                                                    "Add Time  ",
                                                                                    style: TextStyle(color: mainColor, fontSize: 14, fontWeight: FontWeight.w500),
                                                                                  )
                                                                                ]),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                125,
                                                                            height:
                                                                                56,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: mainColor,
                                                                              borderRadius: BorderRadius.circular(16),
                                                                            ),
                                                                            child:
                                                                                Center(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Row(children: [
                                                                                  Image.asset(
                                                                                    "assets/images/timer.png",
                                                                                    width: 24,
                                                                                    height: 24,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 8,
                                                                                  ),
                                                                                  const Text(
                                                                                    "Reschedule",
                                                                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                                                                                  )
                                                                                ]),
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: Image.asset(
                                                          "assets/images/calendar.png",
                                                          width: 20,
                                                          height: 20,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 16,
                                                      ),
                                                      Image.asset(
                                                        "assets/images/clock.png",
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 16,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          selectedFlag = true;
                                                        },
                                                        onDoubleTap: () {
                                                          setState(() {
                                                            selectedFlag =
                                                                false;
                                                          });
                                                        },
                                                        child: Image.asset(
                                                          selectedFlag
                                                              ? "assets/images/green_flag.png"
                                                              : "assets/images/flag.png",
                                                          width: 20,
                                                          height: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Image.asset(
                                                    "assets/images/send.png",
                                                    width: 24,
                                                    height: 24,
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            const Divider(),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("😁"),
                                                  Text("🤑"),
                                                  Text("😇"),
                                                  Text("🥰"),
                                                  Text("🙌"),
                                                  Text("👋"),
                                                  Text("😨"),
                                                  Text("✌️")
                                                ],
                                              ),
                                            )
                                          ]),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Tap plus to create a new task",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 25,
                    thickness: 0.5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Add your task",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Today Sunday 25 Nov 2023",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
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
