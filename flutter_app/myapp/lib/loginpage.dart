import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _username =
      TextEditingController(); //refresh nabhaikana value janxa so print garna mildaina  // setState nabhako
  final TextEditingController _password = TextEditingController();

  final _formKey =
      GlobalKey<
        FormState
      >(); // _le private banauxa global le globally available garauxa ani formstate le aaile ko state chinauxa

  bool isVisible = true;

  List<Auth> userList = [Auth(userName: "Riju Manandhar", password: "riju45")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // lekhyo ki lekhena check garxa
        key: _formKey, // mathi ko formkey pass gareko
        // autovalidateMode: AutovalidateMode
        //     .onUserInteraction, //null huna didaina validation dekhauxa
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "*Please Enter your name";
                  } else {
                    return null;
                  }
                },
                controller: _username,
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                obscureText: isVisible
                    ? true
                    : false, //password hide grane kaam garxa
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 4) {
                    return "*Please Enter your password";
                  } else {
                    return null;
                  }
                },
                controller: _password,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 158, 212, 240),
                  foregroundColor: Colors.black,
                  minimumSize: Size(MediaQuery.of(context).size.width, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final okayUser = userList.firstWhere(
                      (user) =>
                          user.userName == _username.text.trim() &&
                          user.password == _password.text.trim(),
                      orElse: () => Auth(userName: "", password: ""),
                    );
                    if (okayUser.userName != "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("✅Login Sucessful")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Username/Password")),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Invalid Username/Password")),
                    );
                  }
                },
                child: Text("Login", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Auth {
  String? userName;
  String? password;

  Auth({this.userName, this.password});
}
