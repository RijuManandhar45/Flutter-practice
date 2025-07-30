import 'package:flutter/material.dart';
import 'package:myapp/bankmodel.dart';

class Banklist extends StatefulWidget {
  const Banklist({super.key});

  @override
  State<Banklist> createState() => _BanklistState();
}

class _BanklistState extends State<Banklist> {
  bool isSeen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 234),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 199, 23, 17),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 48,
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.account_balance,
                              color: const Color.fromARGB(255, 242, 240, 240),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Hello",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Riju Manandhar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 60),
                            Icon(
                              Icons.face_6_outlined,
                              color: const Color.fromARGB(255, 238, 232, 232),
                              size: 27,
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.notifications_none_outlined,
                              color: const Color.fromARGB(255, 238, 232, 232),
                              size: 27,
                            ),
                            SizedBox(width: 8),

                            Icon(
                              Icons.person_2_outlined,
                              color: const Color.fromARGB(255, 238, 232, 232),
                              size: 27,
                            ),
                          ],
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 105,
                        width: 400,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.savings_outlined),
                                      SizedBox(width: 5),
                                      Text(
                                        "NORMAL SAVINGS",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      SizedBox(width: 100),
                                    ],
                                  ),
                                  isSeen
                                      ? Text(
                                          "2246554121000543",
                                          style: TextStyle(fontSize: 13),
                                        )
                                      : Text(
                                          "XXXXXXXXXXXX",
                                          style: TextStyle(fontSize: 13),
                                        ),

                                  Row(
                                    children: [
                                      isSeen
                                          ? Text(
                                              "NPR.",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                            )
                                          : Text(
                                              "XXX",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                              ),
                                            ),
                                      isSeen
                                          ? Text(
                                              "26,30,45,623.10",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            )
                                          : Text(
                                              "XXX",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),

                                      SizedBox(width: 12),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isSeen = !isSeen;
                                          });
                                        },
                                        icon: Icon(
                                          isSeen
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          size: 17,
                                          color: Color.fromARGB(
                                            255,
                                            200,
                                            48,
                                            37,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Column(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 180,
                      width: double.infinity,
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: bankList.length,
                          itemBuilder: (context, index) {
                            final bank = bankList[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),

                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      6,
                                    ),

                                    child: Container(
                                      height: 120,
                                      width: 90,
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        255,
                                        255,
                                      ),

                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,

                                        children: [
                                          SizedBox(
                                            height: 40,

                                            child: Image.network(
                                              bank.account ?? "",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(bank.content ?? ""),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.keyboard_arrow_down),

                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(6),
                          child: Container(
                            height: 50,
                            width: 90,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.edit_document,
                                    color: Colors.red,
                                    size: 17,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "Edit Menu",
                                    style: TextStyle(
                                      fontSize: 14,

                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          "Recent Transactions ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text(
                                "All",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 115,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(Icons.arrow_circle_up, color: Colors.green),
                              SizedBox(width: 9),
                              Text(
                                "Deposit",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 115,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(
                                Icons.arrow_circle_down,
                                color: Colors.brown,
                              ),
                              SizedBox(width: 9),
                              Text(
                                "Withdraw",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                      child: Container(
                        height: 80,
                        width: 350,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " Any shop name",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Awfukhksrujvb",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "July 13, 2025",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        154,
                                        158,
                                        160,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      isSeen
                                          ? Text(
                                              "NPR.",
                                              style: TextStyle(fontSize: 15),
                                            )
                                          : Text(
                                              "XXX.",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                      isSeen
                                          ? Text(
                                              "2000.00",
                                              style: TextStyle(fontSize: 18),
                                            )
                                          : Text(
                                              "XX",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                      SizedBox(width: 8),
                                      Icon(Icons.more_horiz),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(height: 80, width: 350, color: Colors.white),
                    SizedBox(height: 8),
                    Container(height: 80, width: 350, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
