import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  final totaldate = 33;
  final gap = 2;

  @override
  Widget build(BuildContext context) {
    final totalbox = totaldate + gap;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.menu, color: Colors.white, size: 30),
                    SizedBox(width: 16),
                    SizedBox(
                      height: 37,
                      width: 37,

                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Hamro_Patro_wordmark.svg/1200px-Hamro_Patro_wordmark.svg.png",
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "HAMRO PATRO",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.account_circle_outlined,
                      color: const Color.fromARGB(255, 117, 147, 183),
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: const Color.fromARGB(255, 38, 37, 37)),
            SizedBox(height: 8),
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromARGB(255, 34, 43, 56),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "असार २०८२",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Jun/Jul 2025",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: const Color.fromARGB(255, 121, 142, 170),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(5),
                      child: Container(
                        height: 35,
                        width: 48,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "आज",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.chevron_left,
                      color: const Color.fromARGB(255, 121, 142, 170),
                    ),
                    SizedBox(width: 24),
                    Icon(
                      Icons.chevron_right,
                      color: const Color.fromARGB(255, 121, 142, 170),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: calenderList.map((day) {
                      return Expanded(
                        child: Text(day, style: TextStyle(color: Colors.white)),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 300,
                    child: Expanded(
                      child: GridView.builder(
                        itemCount: totalbox,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          // mainAxisSpacing: 3,
                          // crossAxisSpacing: 3,
                        ),
                        itemBuilder: (context, index) {
                          bool isSaturday = index % 7 == 6;
                          if (index < gap || index > 33) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                              ),
                            );
                          }
                          int date = index - gap + 1;
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Center(
                              child: Text(
                                date.toString(),
                                style: TextStyle(
                                  color: isSaturday
                                      ? const Color.fromARGB(255, 192, 27, 15)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> calenderList = [
  "आइ",
  "सोम",
  "मंगल",
  "बुध",
  "बिही",
  "शुक्र",
  "शनि",
];

List<String> holiday = ["4", "14", "15", "24", "29"];

// List<String> calList = [
//   "१",
//   "२",
//   "३",
//   "४",
//   "५",
//   "६",
//   "७",
//   "८",
//   "९",
//   "१०",
//   "११",
//   "१२",
//   "१३",
//   "१४",
//   "१५",
//   "१६",
//   "१७",
//   "१८",
//   "१९",
//   "२०",
//   "२१",
//   "२२",
//   "२३",
//   "२४",
//   "२५",
//   "२६",
//   "२७",
//   "२८",
//   "२९",
//   "३०",
//   "३१",
// ];
