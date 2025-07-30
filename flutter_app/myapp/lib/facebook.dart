import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),

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
                    color: Color.fromARGB(255, 21, 127, 213),
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
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: Container(
                        height: 150,
                        width: 110,
                        child: Image.network(
                          "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/508153563_1546713016336270_8926498276878238809_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vJC9i_um7E8Q7kNvwFtIDsG&_nc_oc=Admr0eR6Oj-6uJyB_qS1m9TXwnfB7qXVpb3-Zm1Z5737gAzYilen3HyAH1DNxjTyWwxhNnMPJ7kwbM5As5YkkL2X&_nc_zt=23&_nc_ht=scontent.fktm19-1.fna&_nc_gid=TIz0Wp470MPawz_uTq1AXA&oh=00_AfOBQWgKhTwLo97T8td1uay7c5y5pToJOjEohS2rSUII8g&oe=686DB56C",
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
                          color: const Color.fromARGB(255, 23, 92, 212),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                            "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/508153563_1546713016336270_8926498276878238809_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=vJC9i_um7E8Q7kNvwFtIDsG&_nc_oc=Admr0eR6Oj-6uJyB_qS1m9TXwnfB7qXVpb3-Zm1Z5737gAzYilen3HyAH1DNxjTyWwxhNnMPJ7kwbM5As5YkkL2X&_nc_zt=23&_nc_ht=scontent.fktm19-1.fna&_nc_gid=TIz0Wp470MPawz_uTq1AXA&oh=00_AfOBQWgKhTwLo97T8td1uay7c5y5pToJOjEohS2rSUII8g&oe=686DB56C",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
