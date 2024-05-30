import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<SignupScreen> {
  bool selected = false;
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  final _regKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/logo/ONLINE.png',
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Sign Up",
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
                  "Create an new account",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Form(
              key: _regKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _userName,
                      decoration: const InputDecoration(
                          labelText: "User Name",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          hintText: "Enter a User Name",
                          suffixIcon: Icon(Icons.verified)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter User Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        hintText: "Enter a Email",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        hintText: "Enter a Password",
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _confirmPassword,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        hintText: "Enter Confirm Password",
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Confirm Password";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              )),
          Row(
            children: [
              Checkbox(
                value: selected,
                onChanged: (bool? value) {
                  setState(() {
                    selected = value!;
                  });
                },
                activeColor: Colors.black,
              ),
              const Expanded(
                child: Text(
                  "By Creating an account you have to agree with our them condication.",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: OutlinedButton(
              onPressed: () {
                if (_regKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/signup-complete');
                }
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.black),
                  foregroundColor:  WidgetStateProperty.all(Colors.white),
                  minimumSize: WidgetStateProperty.all(const Size(400, 50))),
              child: const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
