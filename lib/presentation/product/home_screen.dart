import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var offerImage = [
    'assets/images/image 90.png',
    'assets/images/sheos.jpg',
    'assets/images/image 90.png',
    'assets/images/sheos.jpg',
  ];

  final pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/icons/Rectangle 97.png',
            width: 56,
            height: 56,
          )
        ],
        leading: Image.asset('assets/icons/menu.png'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 35),
                child: Row(
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Our Fashion App",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 15.0),
                      hintText: "Search",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: const BorderSide())),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: offerImage.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage(offerImage[index]),
                                  fit: BoxFit.fill),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "50% Off",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "On everything today",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/product');
                                        },
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.black)),
                                        child: const Text(
                                          "Get Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, top: 20.0),
              ),
             Row(
  children: [
    const Padding(
      padding: EdgeInsets.only(top: 10, left: 20, bottom: 20),
      child: Text(
        "New Arrivals",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    const Spacer(), 
    Padding(
      padding: const EdgeInsets.only(right: 10,bottom: 12),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/product');
        },
        child: const Text(
          "View All",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    )
  ],
),


              Row(
  children: [
    Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product');
        },
        child: Card(
          elevation: 1,
          child: SizedBox(
            height: 250,
            child: Column(
              children: [
                Image.asset("assets/images/image 91 .png"),
                const Text(
                  "The Marc Jacobs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Traveler Tote",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "₹195.00",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product');
        },
        child: Card(
          elevation: 1,
          child: SizedBox(
            height: 250,
            child: Column(
              children: [
                Image.asset("assets/images/image.png"),
                const Text(
                  "Axel Arigato",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Clean 90 Triple Sneakers",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "₹245.00",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  ],
),

               
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
      destinations: const [
      NavigationDestination(icon: Icon(Icons.home), label: "Home"),
      NavigationDestination(icon: Icon(Icons.trolley), label: ""),
      NavigationDestination(icon: Icon(Icons.notifications), label: ""),
      NavigationDestination(icon: Icon(Icons.person), label: "")
],
),
    );
  }
}
