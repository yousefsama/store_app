import 'package:flutter/material.dart';
import 'package:storeapp/Models/Product_Model.dart';
import 'package:storeapp/Services/GetAllCategory.dart';
import 'package:storeapp/Services/GetProductService.dart';
import 'package:storeapp/Widget/Card_Widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add_shopping_cart_sharp))
        ],
      ),
      body: FutureBuilder(
        future: AllProductsSercive().getAllProduct(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> productsList = snapshot.data!;
            return GridView.builder(
              itemCount: productsList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card_Widget(
                  productModel: productsList[index],
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
