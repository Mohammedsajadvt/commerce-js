import 'package:e_commerce/model/onboarding_model.dart';
import 'package:e_commerce/widgets/onboarding_data.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Widget circleBar(bool isActive) {
      return AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8),
        height: isActive ? 14 : 10,
        width: isActive ? 14 : 10,
        decoration: BoxDecoration(
            color: isActive ? Colors.black : Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(12))),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemCount: list.length,
              itemBuilder: (context, index) {
                OnBoarding boarding = list[index];
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(child: Image.asset(boarding.image)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          boarding.title,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          boarding.description,
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < list.length; i++)
                    if (i == currentPage) ...[circleBar(true)] else
                      circleBar(false),
                ],
              ),
            ),
          ),
          Visibility(
              visible: currentPage == list.length - 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, '/landing');
                      });
                    },
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26))),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
