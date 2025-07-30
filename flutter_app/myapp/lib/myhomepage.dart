import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              "facebook",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 55, 110, 205),
              ),
            ),
            Row(
              children: [
                Text(
                  "facebook",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 55, 110, 205),
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "facebook",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 55, 110, 205),
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
