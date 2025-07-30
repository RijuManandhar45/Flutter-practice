import 'package:flutter/material.dart';
import 'package:myapp/food.dart';

class File extends StatefulWidget {
  const File({super.key});

  @override
  State<File> createState() => _FileState();
}

class _FileState extends State<File> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.sargento.com/assets/Uploads/Recipe/Image/Burger-v2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 270),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(30),
                      child: Container(
                        width: double.infinity,
                        color: const Color.fromARGB(255, 237, 240, 241),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chicken Burger 🍔",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "\$ 20,100",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromARGB(255, 251, 151, 0),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    size: 18,
                                    color: const Color.fromARGB(
                                      255,
                                      251,
                                      151,
                                      0,
                                    ),
                                  ),
                                  Text(
                                    "Free Delivery",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(width: 56),
                                  Icon(
                                    Icons.access_time_filled_outlined,
                                    size: 18,
                                    color: const Color.fromARGB(
                                      255,
                                      251,
                                      151,
                                      0,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "20-30",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: const Color.fromARGB(
                                      255,
                                      251,
                                      151,
                                      0,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(),
                              ),

                              Text(
                                "Description",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Burger With Meat is a typical food from our restaurant that is much in demand by many people, this isvery recommended for you.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    "Recommended For You",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "See All",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromARGB(
                                        255,
                                        251,
                                        151,
                                        0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              SizedBox(
                                height: 500,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 6,

                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 15,
                                        crossAxisSpacing: 15,
                                      ),
                                  itemBuilder: (context, index) {
                                    final burger = burgerList[index];
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => File(),
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        child: Container(
                                          color: const Color.fromARGB(
                                            255,
                                            240,
                                            237,
                                            237,
                                          ),
                                          child: Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 85,
                                                    width: double.infinity,

                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadiusGeometry.circular(
                                                            8,
                                                          ),
                                                      child: Image.network(
                                                        burger.burgerPic ?? "",
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  4.0,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      burger.burgerName ?? "",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    SizedBox(
                                                      width: 100,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,

                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                const Color.fromARGB(
                                                                  255,
                                                                  251,
                                                                  151,
                                                                  0,
                                                                ),
                                                            size: 15,
                                                          ),
                                                          Text(
                                                            "4.9",
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Icon(
                                                            Icons
                                                                .location_on_outlined,
                                                            size: 15,
                                                            color:
                                                                const Color.fromARGB(
                                                                  255,
                                                                  251,
                                                                  151,
                                                                  0,
                                                                ),
                                                          ),
                                                          Text(
                                                            "190m",
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 3),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "\$ ",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                const Color.fromARGB(
                                                                  255,
                                                                  251,
                                                                  151,
                                                                  0,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          burger.burgerPrice ??
                                                              "",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                const Color.fromARGB(
                                                                  255,
                                                                  251,
                                                                  151,
                                                                  0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 500),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Food()),
                            );
                          },
                          child: Icon(
                            Icons.chevron_left,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          "About This Menu",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                            border: Border.all(color: Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isClicked) {
                                    isClicked = !isClicked;
                                  } else {
                                    isClicked = true;
                                  }
                                });
                              },
                              icon: isClicked
                                  ? Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                      size: 22,
                                    )
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.pink,
                                      size: 22,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Burger {
  String? burgerPic;
  String? burgerName;
  String? burgerPrice;

  Burger({this.burgerPic, this.burgerName, this.burgerPrice});
}

List<Burger> burgerList = [
  Burger(
    burgerPic: "https://images.deliveryhero.io/image/fd-sg/LH/izfs-listing.jpg",
    burgerName: "Regular Burger",
    burgerPrice: "17,230",
  ),
  Burger(
    burgerPic:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcxvEpTKOMteKdapiOPP--2yklD8urMCWHOA&s",
    burgerName: "Cheese Burger",
    burgerPrice: "19,500",
  ),
  Burger(
    burgerPic:
        "https://www.seriouseats.com/thmb/_c-xbP-tch4dpSTxKE1zY16sHo8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20231204-SEA-VeganBurger-FredHardy-00-dbf603c78b694bfd99489b85ab44f4c4.jpg",
    burgerName: "Veggie Burger",
    burgerPrice: "14,900",
  ),
  Burger(
    burgerPic:
        "https://www.sargento.com/assets/Uploads/Recipe/Image/Burger-v2.jpg",
    burgerName: "Chicken Burger",
    burgerPrice: "20,100",
  ),
  Burger(
    burgerPic:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF9i2CqaijbexpLpX525-B5nWGr3WLLu9GTZM9_GZUNNyTavclvIghdVROqWMMC871S8o&usqp=CAU",
    burgerName: "Double Patty Burger",
    burgerPrice: "22,800",
  ),
  Burger(
    burgerPic:
        "https://img.freepik.com/premium-photo/spicy-burger_777078-577.jpg",
    burgerName: "Spicy Beef Burger",
    burgerPrice: "21,600",
  ),
];
