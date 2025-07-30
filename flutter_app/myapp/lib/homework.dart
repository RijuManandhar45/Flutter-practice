import 'package:flutter/material.dart';

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Sometimes, silence says more than words ever could. In moments of stillness, we become aware of things we often miss — the rhythm of our breath, the weight of our thoughts, the gentle pulse of time passing by. It’s in these quiet spaces that clarity often arises, uninvited but welcome.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(137, 25, 202, 1),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Winding through the narrow alleys of an unfamiliar city, you realize how thrilling it is to be lost. Every corner holds a new story — the scent of unfamiliar spices, the laughter of strangers, a mural you’ll never forget. Traveling isn’t just about distance; it’s about perspective, freedom, and discovery.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 55, 110, 205),
                ),
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      "Technology is evolving at an unimaginable pace. What once took decades now happens in months. From artificial intelligence to biohacking, the lines between science fiction and reality continue to blur. The future doesn’t just arrive — we build it, code by code, idea by idea.",
                      maxLines: 20,
                      style: TextStyle(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,

                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 94, 7),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Expanded(
                    child: Text(
                      "The forest was alive with quiet wonder. Leaves whispered in the wind, and sunlight trickled through the canopy in golden streams. Every breath felt deeper here, as if the trees were reminding you how to inhale fully — how to slow down, let go, and simply exist.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 3, 99, 53),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
