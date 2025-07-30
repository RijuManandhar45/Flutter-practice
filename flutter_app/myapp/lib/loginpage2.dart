import 'package:flutter/material.dart';
import 'package:myapp/provider/login_provider.dart';
import 'package:provider/provider.dart';

class LoginPage2 extends StatefulWidget {
  LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final _formKey = GlobalKey<FormState>();
  // _le private banauxa global le globally available garauxa ani formstate le aaile ko state chinauxa

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginProvider>(
        builder: (_, loginProvider, child) => Form(
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
                  controller: loginProvider.username,
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
                        loginProvider.toggleVisible();
                      },
                      child: Icon(
                        loginProvider.isVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  obscureText: loginProvider.isVisible
                      ? true
                      : false, //password hide grane kaam garxa
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 4) {
                      return "*Please Enter your password";
                    } else {
                      return null;
                    }
                  },
                  controller: loginProvider.password,
                ),
                SizedBox(height: 8),
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
                      loginProvider.checkUser(context);
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
      ),
    );
  }
}
