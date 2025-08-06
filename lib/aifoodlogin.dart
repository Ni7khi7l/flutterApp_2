import 'package:flutter/material.dart';

class Aifoodlogin extends StatefulWidget {
  const Aifoodlogin({super.key});

  @override
  State<Aifoodlogin> createState() => _AifoodloginState();
}

class _AifoodloginState extends State<Aifoodlogin> {
  final TextEditingController _usernameController =
      TextEditingController(); //single sinle value jadaina refresh nabhai kana value janxa
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  "Login to your account.",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Please sign in to your account.",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your name";
                    } else {
                      return null;
                    }
                  },
                  controller: _usernameController,
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      child: isvisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  obscureText: isvisible ? true : false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your password";
                    } else {
                      return null;
                    }
                  },
                  controller: _passwordController,
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {},
                  child: Text("Sign in", style: TextStyle()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
