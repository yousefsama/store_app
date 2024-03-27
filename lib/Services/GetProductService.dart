import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/Helper/api.dart';

import 'package:storeapp/Models/Product_Model.dart';

class AllProductsSercive {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
