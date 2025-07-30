import 'package:flutter/material.dart';
import 'package:myapp/provider/food_provider.dart';
import 'package:provider/provider.dart';

class FoodLogin extends StatefulWidget {
  FoodLogin({super.key});

  @override
  State<FoodLogin> createState() => _FoodLoginState();
}

class _FoodLoginState extends State<FoodLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<FoodProvider>(
          builder: (_, foodProvider, child) => Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login to your account.",
                      style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Please sign in to your account.",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),

                    SizedBox(height: 16),
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      controller: foodProvider.email,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        suffixIcon: InkWell(
                          onTap: () {
                            // foodProvider.toggleVisible();
                          },
                          child: Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: true,
                      controller: foodProvider.password,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 156, 7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 156, 7),
                        foregroundColor: Colors.white,
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          40,
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final okayUser = foodProvider.authList.firstWhere(
                            (user) =>
                                user.email == foodProvider.email.text.trim(),
                          );
                        }
                      },
                      child: Text("Sign In ", style: TextStyle(fontSize: 17)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Or sign in with")],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://static.vecteezy.com/system/resources/previews/022/613/027/non_2x/google-icon-logo-symbol-free-png.png",
                          height: 30,
                        ),
                        SizedBox(width: 8),
                        Image.network(
                          "https://static.vecteezy.com/system/resources/previews/042/127/158/non_2x/round-blue-facebook-logo-with-white-thick-border-and-long-shadow-on-a-transparent-background-free-png.png",
                          height: 35,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtaPXeQzJxQ6ekg5XA5uT3wRbFqB6mUiyvHfRkyg3a4d_6vWpZoQ_Qqki3bVHwyRHZFN0&usqp=CAU",
                          height: 25,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 156, 7),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
