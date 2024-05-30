
import 'package:flutter/material.dart';


class SignupSuccess extends StatefulWidget {
  const SignupSuccess({super.key});

  @override
  State<SignupSuccess> createState() => _SignupSuccessState();
}

class _SignupSuccessState extends State<SignupSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 250, bottom: 20),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 50,
                ),
              ),
              const Text(
                "Successful!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                "You have successfully registered in",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "our app and start working in it.",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: [
                 Padding(
  padding: const EdgeInsets.only(top: 290, left: 20, right: 10, bottom: 20),
  child: OutlinedButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, '/home');
    },
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      minimumSize: WidgetStateProperty.all(
        Size(MediaQuery.of(context).size.width / 1.1, 50),
      ),
      backgroundColor: WidgetStateProperty.all(Colors.black),
      side: WidgetStateProperty.all(
        const BorderSide(color: Colors.black, width: 1),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    child: const Text("Start Shopping"),
  ),
),
                ],
              )
            ],
          )),
        ));
  }
}
