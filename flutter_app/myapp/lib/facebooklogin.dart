import 'package:flutter/material.dart';

class Facebooklogin extends StatefulWidget {
  const Facebooklogin({super.key});

  @override
  State<Facebooklogin> createState() => _FacebookloginState();
}

class _FacebookloginState extends State<Facebooklogin> {
  final TextEditingController _mobilenumber = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<Login> loginList = [Login(mobileNumber: "12345", password: "hello")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "facebook",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 28, 107, 212),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mobile number or email",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter your mobile number or email";
                  }
                  return null;
                },

                controller: _mobilenumber,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter your password";
                  }
                  return null;
                },
                obscureText: true,
                controller: _password,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 28, 107, 212),
                  foregroundColor: Colors.white,
                  minimumSize: Size(MediaQuery.of(context).size.width, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final okayUser = loginList.firstWhere(
                      (user) =>
                          user.mobileNumber == _mobilenumber.text.trim() &&
                          user.password == _password.text.trim(),
                      orElse: () => Login(mobileNumber: "", password: ""),
                    );
                    if (okayUser.mobileNumber != "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login Sucessful")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Invalid mobilenumber or password"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid mobilenumber or password"),
                      ),
                    );
                  }
                },
                child: Text("Log In", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Login {
  String? mobileNumber;
  String? password;

  Login({this.mobileNumber, this.password});
}
