import 'package:flutter/material.dart';
import 'package:myapp/facebook_model.dart';

class Facebooklist extends StatefulWidget {
  const Facebooklist({super.key});

  @override
  State<Facebooklist> createState() => _FacebooklistState();
}

class _FacebooklistState extends State<Facebooklist> {
  bool isLiked = false;
  int likeCount = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
              SizedBox(height: 16),
              Container(
                height: 180,
                width: double.infinity,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection:
                        Axis.horizontal, // story horizontal aaune gareko
                    itemCount: storyList.length, // list ma bhako length leko
                    itemBuilder: (context, index) {
                      final story = storyList[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: Container(
                                height: 180,
                                width: 110,
                                child: Image.network(
                                  story.con ?? "",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                      255,
                                      33,
                                      103,
                                      243,
                                    ),
                                  ),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: NetworkImage(
                                      story.profilePic ?? "",
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              right: 16,
                              bottom: 8,
                              child: Text(
                                story.profileName ?? "",

                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(
                                    255,
                                    230,
                                    227,
                                    227,
                                  ),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(thickness: 3),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: storyList.length,
                  itemBuilder: (context, index) {
                    final post = storyList[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(post.contain ?? ""),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post.profileName ?? "",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),

                                Text("1hr"),
                              ],
                            ),

                            Spacer(),
                            Icon(Icons.more_horiz),
                            SizedBox(width: 6),
                            Icon(Icons.close),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              post.post ?? "",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 330,
                          width: 330,
                          color: Colors.blueGrey,

                          child: Image.network(
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            post.con ?? "",
                          ),
                        ),
                        SizedBox(height: 16),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Text("❤️", style: TextStyle(fontSize: 20)),
                              ],
                            ),

                            Positioned(
                              right: 290,
                              child: Text("😆", style: TextStyle(fontSize: 20)),
                            ),
                            Positioned(
                              right: 275,
                              child: Text("🥲", style: TextStyle(fontSize: 20)),
                            ),

                            Positioned(
                              right: 245,
                              child: Text(
                                "$likeCount",

                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            Positioned(
                              right: 3,
                              child: Text(
                                "1.2k Comments",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isLiked) {
                                    likeCount = likeCount - 1;
                                  } else {
                                    likeCount = likeCount + 1;
                                  }
                                  isLiked = !isLiked;
                                });
                              },
                              icon: isLiked
                                  ? Icon(Icons.thumb_up_alt, color: Colors.blue)
                                  : Icon(Icons.thumb_up_alt_outlined),
                            ),
                            isLiked
                                ? Text(
                                    "Like",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue,
                                    ),
                                  )
                                : Text("Like", style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        Divider(thickness: 5),
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
