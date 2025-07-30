import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  String? val;
  int? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  labelText: "Username",
                ),
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
              ),
              SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: val,
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Text(val ?? ""),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your number",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  labelText: "Phone Number",
                ),
                onChanged: (value) {
                  setState(() {
                    data = int.parse(value);
                  });
                },
              ),
              SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: data.toString(),
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Text(val ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
