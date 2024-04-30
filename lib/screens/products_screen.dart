import 'package:e_commerce/model/product_model.dart';
import 'package:e_commerce/widgets/api.dart';
import 'package:e_commerce/widgets/product_card.dart';
import 'package:flutter/material.dart';



class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      List<Product> fetchedProducts = await APIService.fetchData();
      setState(() {
        products = fetchedProducts;
      });
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3 / 4,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(products[index]);
          },
        ),
      ),
      bottomNavigationBar: NavigationBar(
      destinations: const [
      NavigationDestination(icon: Icon(Icons.home), label: ""),
      NavigationDestination(icon: Icon(Icons.trolley), label: "Products"),
      NavigationDestination(icon: Icon(Icons.notifications), label: ""),
      NavigationDestination(icon: Icon(Icons.person), label: "")
],
),
    );
  }
}
