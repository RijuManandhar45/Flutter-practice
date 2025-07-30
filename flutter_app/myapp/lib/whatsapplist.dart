import 'package:flutter/material.dart';

class Whatsapplist extends StatefulWidget {
  const Whatsapplist({super.key});

  @override
  State<Whatsapplist> createState() => _WhatsapplistState();
}

class _WhatsapplistState extends State<Whatsapplist> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (isClicked) {
                          isClicked = false;
                        } else {
                          isClicked = true;
                        }
                        ;
                      });
                    },
                    child: !isClicked
                        ? Text(
                            "WhatsApp",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            ),
                          )
                        : Text(
                            "WhatsApp",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 29, 106, 161),
                            ),
                          ),
                  ),
                  Spacer(),
                  Icon(Icons.camera_alt_outlined),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.search),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              Divider(thickness: 0.5),
              Expanded(
                child: ListView.builder(
                  itemCount: whatsAppList.length,
                  itemBuilder: (context, index) {
                    final app = whatsAppList[index];
                    return Column(
                      children: [
                        Container(
                          height: 70,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 243, 242, 241),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    30,
                                  ),
                                  child: Image.network(
                                    app.profilePic ?? "",

                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Row(
                                        children: [
                                          Text(
                                            app.profileName ?? "",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Text("10:45"),
                                        ],
                                      ),
                                    ),
                                    Text("message"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WhatsApp {
  String? profilePic;
  String? profileName;

  WhatsApp({this.profilePic, this.profileName});
}

List<WhatsApp> whatsAppList = [
  WhatsApp(
    profileName: "Aarav Sharma",
    profilePic: "https://randomuser.me/api/portraits/men/1.jpg",
  ),
  WhatsApp(
    profileName: "Sneha Rai",
    profilePic: "https://randomuser.me/api/portraits/women/2.jpg",
  ),
  WhatsApp(
    profileName: "Rohit Thapa",
    profilePic: "https://randomuser.me/api/portraits/men/3.jpg",
  ),
  WhatsApp(
    profileName: "Nisha Koirala",
    profilePic: "https://randomuser.me/api/portraits/women/4.jpg",
  ),
  WhatsApp(
    profileName: "Bikash Lama",
    profilePic: "https://randomuser.me/api/portraits/men/5.jpg",
  ),
  WhatsApp(
    profileName: "Puja Maharjan",
    profilePic: "https://randomuser.me/api/portraits/women/6.jpg",
  ),
  WhatsApp(
    profileName: "Sunil Shrestha",
    profilePic: "https://randomuser.me/api/portraits/men/7.jpg",
  ),
  WhatsApp(
    profileName: "Kritika Bhattarai",
    profilePic: "https://randomuser.me/api/portraits/women/8.jpg",
  ),
  WhatsApp(
    profileName: "Dipesh Gautam",
    profilePic: "https://randomuser.me/api/portraits/men/9.jpg",
  ),
  WhatsApp(
    profileName: "Anusha Pandey",
    profilePic: "https://randomuser.me/api/portraits/women/10.jpg",
  ),
];
