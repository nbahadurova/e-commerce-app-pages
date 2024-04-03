import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/data/services/products_service.dart';




part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  void getProduct() async{
    try {
       emit(ProductsLoading());
      final result = await ProductsService().getProductItems();
      emit(ProductsSuccess(response: result));
    } on SocketException catch(e){
      emit(ProductsNetworkError(message: 'No internet'));
    }
     catch (e) {
      emit(ProductsFailure(message: 'Error occured'));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
