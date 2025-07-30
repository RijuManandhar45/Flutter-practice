import 'package:flutter/material.dart';

class Faceb extends StatelessWidget {
  const Faceb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    "facebook",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 28, 107, 212),
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),

                    child: Container(
                      color: Colors.black,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.search),
                  SizedBox(width: 16),
                  Icon(Icons.message_rounded),
                ],
              ),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Container(
                            height: 180,
                            width: 110,
                            child: Image.network(
                              "https://i.pinimg.com/474x/64/a3/f2/64a3f2ad8cf6fa2c1b18a7a4784111bd.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 33, 103, 243),
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                    "https://scontent.fktm1-1.fna.fbcdn.net/v/t39.30808-6/476884703_1455727898768116_4202297782304028479_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=00nb1-g8e5wQ7kNvwG7QCFW&_nc_oc=AdnOeSfiQZKsYPuxgKdbpnpNBSzQkbauvMqBNXPBtjNbX2rXJna2GeE6VreUNSTqyyU&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=iswGIbcvyha2vP3bBGsBIw&oh=00_AfPQfT2NYyuIArEA19Fmbuvqd0PGRxdjuIJAjFoWco9lxA&oe=686DCD20",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 25,
                          bottom: 8,
                          child: Text(
                            "Your Story",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 230, 227, 227),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                    SizedBox(width: 8),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Container(
                            height: 180,
                            width: 110,
                            child: Image.network(
                              "https://i.pinimg.com/736x/96/3e/73/963e736dcd7daa292b6b555a759250e1.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 33, 103, 243),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                "https://scontent.fktm1-1.fna.fbcdn.net/v/t39.30808-6/471206252_604528398921181_2557195143166891379_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=2pkaYkJyehAQ7kNvwEy_kLN&_nc_oc=AdnfA0SqwpnEx3iQj3NiPHUXu6RMWPY_OMqJHLGt-7W78pEmuLKrPPvWT3si8EeL7XE&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=5oC76UN4YV1RXMSlsvHDkA&oh=00_AfMLYlYMRIVnhYg0FkqP9srN33BcGZodAC9dH-782ExD0w&oe=686DDC38",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Container(
                            height: 180,
                            width: 110,
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk8EyWJAHOvBV5DF3f__f90kdzMo08JJWpg6A9iBgvEfCUBNNwfP-0aaM8IUaMgxqT-lI&usqp=CAU",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 33, 103, 243),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                "https://scontent.fktm1-1.fna.fbcdn.net/v/t51.75761-15/499221768_17998678697795797_4635710444019921569_n.webp?stp=dst-jpg_tt6&_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_ohc=bNcI2s1punQQ7kNvwEtoiEk&_nc_oc=AdnKUlaHko6DM95tmOMcVjD6oaWCdqsScXGDLf0XHepr4RgUTK7us5Fgwlej8apm3Wc&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=iGVzM0HbZeSPC2xmYu7ftA&oh=00_AfPCu1qyl9QCHDiNXx7XD1FsgwvFWLJZzzjCTvVY6Dow2w&oe=686DE655",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(15),
                          child: Container(
                            height: 180,
                            width: 110,
                            child: Image.network(
                              "https://i.pinimg.com/736x/6a/5a/73/6a5a7375471ebf3d71027e449ed01c9c.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 33, 103, 243),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                "https://i.redd.it/szr6truh58ge1.jpeg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(children: [

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
