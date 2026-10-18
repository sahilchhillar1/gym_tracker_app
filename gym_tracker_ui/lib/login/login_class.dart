import 'package:flutter/material.dart';

class LoginClass extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginClass> createState() => _LoginClassState();
}

class _LoginClassState extends State<LoginClass> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _hidePassword = true;

  /// This function will change password visibility if pressed
  void changePasswordVisibility(){
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Username or Email Address Field
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: _usernameController,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Username or Email Address",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),

                // Adding a Sized box for some space
                const SizedBox(height: 20,),

                // Password Field
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _hidePassword,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () { changePasswordVisibility(); }, 
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),

                // Adding a Sized box for some space
                const SizedBox(height: 20,),

                // Login button
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // If a person already has an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? ", style: TextStyle(color: Colors.white),),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Register", style: TextStyle(color: Colors.blue),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}