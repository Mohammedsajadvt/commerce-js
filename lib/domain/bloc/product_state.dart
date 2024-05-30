


import 'package:e_commerce/data/model/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable{
   @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {
}

class ProductLoading extends ProductState{}

class ProductLoaded extends ProductState{
  final List<Product> product;
  ProductLoaded({required this.product});
  @override
  List<Object?> get props => [product];
}

class ProductError extends ProductState{}
