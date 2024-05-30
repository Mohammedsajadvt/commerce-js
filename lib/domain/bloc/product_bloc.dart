
import 'package:e_commerce/data/model/product_model.dart';
import 'package:e_commerce/data/service/api.dart';
import 'package:e_commerce/domain/bloc/product_event.dart';
import 'package:e_commerce/domain/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>(onLoadProductsHandle);
  }

  onLoadProductsHandle(event, emit) async {
    emit(ProductLoading());
    try {
      APIService productsService = APIService();
      List<Product> data = await APIService.fetchData(); 
      emit(ProductLoaded(product: data));
    } catch (e) {
      emit(ProductError());
    }
    LoadProductsByPriceFilter(event, emit) {}
  }
}

class ProductService {
}
