import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable{
  @override
  List<Object?> get props => [];

}

class LoadProducts extends ProductEvent{}

class LoadProductsByPriceFilter extends ProductEvent{
  final int priceFrom;
  final int priceTo;
LoadProductsByPriceFilter(this.priceFrom,this.priceTo);

}
