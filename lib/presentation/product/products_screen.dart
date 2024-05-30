import 'package:e_commerce/data/model/product_model.dart';
import 'package:e_commerce/domain/bloc/product_bloc.dart';
import 'package:e_commerce/domain/bloc/product_event.dart';
import 'package:e_commerce/domain/bloc/product_state.dart';
import 'package:e_commerce/presentation/product/widgets/product_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ProductScreen extends StatelessWidget {
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    context.read<ProductBloc>().add(LoadProducts());
   });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: BlocBuilder<ProductBloc,ProductState>(builder: (context,state){
        if (state is ProductInitial) {
          return const Center(child: Text('Waiting For Products'));
        } else if (state is ProductLoading) {
          return const Column(
            children: [
              Center(child: CircularProgressIndicator()),
            ],
          );
        } else if (state is ProductError) {
          return const Center(child: Text('Products Load Failed'));
        } else if (state is ProductLoaded) {
          return RefreshIndicator(
            onRefresh: (){
              context.read<ProductBloc>().add(LoadProducts());
              return Future.delayed(const Duration(seconds: 5));
            },
            child: ProductGridview(products: state.product));
            
        }
      return const Text('Empty');
      }),
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


