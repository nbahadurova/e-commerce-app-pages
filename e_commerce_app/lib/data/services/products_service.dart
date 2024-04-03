import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce_app/data/endpoints.dart';
import 'package:e_commerce_app/data/models/products_model.dart';



class ProductsService {
  Future<List<Welcome>> getProductItems() async{
    try {
       final endpoints = Endpoints.productsUrl;
      final url = Uri.parse(endpoints);
      final response = await http.get(url);
      List<dynamic> json = jsonDecode(response.body);
      List<Welcome> products = json.map((e) => Welcome.fromJson(e)).toList();

      if (response.statusCode == 200) {
        return products;
      }
      throw Exception();
    } on SocketException catch(e){
      throw SocketException('$e');
    }
    catch (e) {
      throw Exception(); 
    }
    
  }
}