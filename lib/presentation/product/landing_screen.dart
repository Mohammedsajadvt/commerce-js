import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/landing_screen.png'),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                isClicked = !isClicked;
                              });
                              Navigator.pushNamed(context, '/login');
                            },
                            style: ButtonStyle(
                                foregroundColor:
                                     WidgetStateProperty.all(Colors.white),
                                minimumSize: WidgetStateProperty.all(
                                    const Size(400, 50)),
                                backgroundColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                                side:  WidgetStateProperty.all(
                                    const BorderSide(
                                        color: Colors.white, width: 2)),
                                textStyle:  WidgetStateProperty.all(
                                    const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                            child: Text("Login"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text("Sign Up"),
                            style: ButtonStyle(
                                foregroundColor:
                                     WidgetStateProperty.all(Colors.white),
                                minimumSize:  WidgetStateProperty.all(
                                    const Size(400, 50)),
                                backgroundColor:  WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                                side:  WidgetStateProperty.all(
                                    const BorderSide(
                                        color: Colors.white, width: 2)),
                                textStyle:
                                     WidgetStateProperty.all(const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
