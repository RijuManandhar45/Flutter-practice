import 'package:flutter/material.dart';
import 'package:myapp/file.dart';
import 'package:myapp/foodnotification.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool isClicked = false;
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Image.network(
                    "https://img.freepik.com/premium-photo/burger-with-black-wooden-background_1129728-51.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Your Location",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "New York City",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),

                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),

                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Foodnotification(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Provides the best food for you",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Text(
                              "Find by Catagory",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listFood.length,
                            itemBuilder: (context, index) {
                              final food = listFood[index];
                              return Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (isClicked) {
                                          isClicked = false;
                                        } else {
                                          isClicked = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 90,
                                      width: 75,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: !isClicked
                                            ? Colors.white
                                            : Colors.orange,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Stack(
                                              children: [
                                                SizedBox(
                                                  height: 20,
                                                  width: 20,
                                                  child: Image.network(
                                                    food.foodPic ?? "",
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              food.foodName ?? "",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                ],
                              );
                            },
                          ),
                        ),
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
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
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

                                            Row(
                                              children: [
                                                Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                    8.0,
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          15,
                                                        ),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isFavourite =
                                                              !isFavourite;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 25,
                                                        height: 25,
                                                        color: !isFavourite
                                                            ? Colors.white
                                                            : Colors.pink,
                                                        child: Icon(
                                                          Icons.favorite_border,

                                                          color: !isFavourite
                                                              ? Color.fromARGB(
                                                                  255,
                                                                  244,
                                                                  54,
                                                                  111,
                                                                )
                                                              : Colors.white,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                burger.burgerName ?? "",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              SizedBox(
                                                width: 100,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,

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
                                                            FontWeight.w600,
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
                                                            FontWeight.w600,
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
                                                    burger.burgerPrice ?? "",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Foodlist {
  String? foodPic;
  String? foodName;
  Foodlist({this.foodName, this.foodPic});
}

List<Foodlist> listFood = [
  Foodlist(
    foodPic: "https://cdn-icons-png.flaticon.com/512/1046/1046784.png",
    foodName: "Burger",
  ),
  Foodlist(
    foodPic: "https://cdn-icons-png.flaticon.com/512/3595/3595458.png",

    foodName: "Pizza",
  ),
  Foodlist(
    foodPic: "https://cdn-icons-png.flaticon.com/512/395/395232.png",
    foodName: "Momo",
  ),
  Foodlist(
    foodPic: "https://cdn-icons-png.flaticon.com/512/2738/2738804.png",
    foodName: "Drinks",
  ),
];

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
