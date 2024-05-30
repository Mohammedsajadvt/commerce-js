import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/logo/ONLINE.png",
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Welcome!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "please login or sign up to continue our app",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
                key: _loginKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        cursorColor: Colors.transparent,
                        decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 20),
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.verified)),
                        controller: _email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Email Id";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(
                          labelText: "Password",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: Icon(Icons.verified),
                        ),
                        controller: _password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Password";
                          }
                        },
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              title: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      if (_loginKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/home');
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        minimumSize:
                            MaterialStateProperty.all(const Size(400, 50))),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.7,
                        color: Colors.grey.withOpacity(0.5),
                      )),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                      const Expanded(child: Divider()),
                      const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      label: const Text("Continue With Facebook"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF1877f2)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(400, 50))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Bootstrap.google,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Continue With Google",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          minimumSize:
                              MaterialStateProperty.all(const Size(400, 50))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Continue With Apple",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          minimumSize:
                              MaterialStateProperty.all(const Size(400, 50))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
