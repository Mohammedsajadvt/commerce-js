
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
                    padding:
                        const EdgeInsets.only(top: 290, left: 5 , right: 5,bottom: 20),
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/onboarding');
                        },
                        child: const Text("Start Shopping"),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(const Size(400, 50)),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.black,
                            ),
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.black, width: 2)),
                            textStyle:
                                MaterialStateProperty.all(const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )))),
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
