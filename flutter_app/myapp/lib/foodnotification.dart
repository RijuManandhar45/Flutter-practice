import 'package:flutter/material.dart';

class Foodnotification extends StatefulWidget {
  const Foodnotification({super.key});

  @override
  State<Foodnotification> createState() => _FoodnotificationState();
}

class _FoodnotificationState extends State<Foodnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Notification")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Today", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      final noti = todayList[index];
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(30),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: const Color.fromARGB(
                                    255,
                                    234,
                                    230,
                                    230,
                                  ),
                                  child: Image.network(noti.logoPic ?? ""),
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 260,
                                    child: Text(
                                      noti.noti ?? "",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    width: 260,
                                    child: Text(
                                      noti.time ?? "",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                        ],
                      );
                    },
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Yesterday", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      final noti = todayList[index];
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(30),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: const Color.fromARGB(
                                    255,
                                    234,
                                    230,
                                    230,
                                  ),
                                  child: Image.network(
                                    noti.yesterdayLogo ?? "",
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 260,
                                    child: Text(
                                      noti.yesterdayNoti ?? "",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    width: 260,
                                    child: Text(
                                      noti.yesterdayTime ?? "",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                        ],
                      );
                    },
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Todaylist {
  String? logoPic;
  String? noti;
  String? time;

  String? yesterdayLogo;
  String? yesterdayNoti;
  String? yesterdayTime;

  Todaylist({
    this.logoPic,
    this.noti,
    this.time,
    this.yesterdayLogo,
    this.yesterdayNoti,
    this.yesterdayTime,
  });
}

List<Todaylist> todayList = [
  Todaylist(
    logoPic:
        "https://us.123rf.com/450wm/dezydezy/dezydezy2305/dezydezy230500129/204300428-percent-discount-red-circle-3d-banner-vector.jpg?ver=6",
    noti: "30% Special Discount!",
    time: "Special promotion only valid today",

    yesterdayLogo:
        "https://t3.ftcdn.net/jpg/12/43/99/00/360_F_1243990091_8kyZzkOhAN3ucbPCJ5TGPUl3hVVFbU1B.jpg",
    yesterdayNoti: "35% Special Discount!",
    yesterdayTime: "Special promotion only valid today",
  ),
  Todaylist(
    logoPic:
        "https://thumbs.dreamstime.com/b/check-tick-mark-green-circle-vector-illustration-isolated-white-check-tick-mark-green-circle-vector-illustration-isolated-132888677.jpg",
    noti: "Your Order Has Been Taken by The Driver",
    time: "Recently!",
    yesterdayLogo:
        "https://static.vecteezy.com/system/resources/previews/006/732/119/non_2x/account-icon-sign-symbol-logo-design-free-vector.jpg",
    yesterdayNoti: "35% Special Discount!",
    yesterdayTime: "Special promotion only valid today",
  ),
  Todaylist(
    logoPic:
        "https://img.freepik.com/premium-vector/cross-sign-cancel-denial-icon-vector_917138-7158.jpg",
    noti: "Your Order Has Been Cancelled",
    time: "19 June 2025",

    yesterdayLogo:
        "https://us.123rf.com/450wm/dezydezy/dezydezy2305/dezydezy230500129/204300428-percent-discount-red-circle-3d-banner-vector.jpg?ver=6",

    yesterdayNoti: "Special Offer! 60% Off",
    yesterdayTime: "Special offer for new account, valid until 20 Nov 2022",
  ),
];
