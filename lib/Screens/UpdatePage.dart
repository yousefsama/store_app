import 'package:flutter/material.dart';
import 'package:storeapp/Models/Product_Model.dart';
import 'package:storeapp/Services/updateProduct%20_Service.dart';
import 'package:storeapp/Widget/CustomTextField.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({super.key});
  static String id = 'UpdatePage';
  String? name, decs, img, price;

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('update'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                textInputType: TextInputType.name,
                onChange: (value) {
                  name = value;
                },
                hintText: 'Enter Product Name',
                isPassword: false,
                label: 'Product Name',
              ),
              SizedBox(height: 10),
              CustomTextField(
                textInputType: TextInputType.text,
                onChange: (value) {
                  decs = value;
                },
                hintText: 'Enter description',
                isPassword: false,
                label: 'description',
              ),
              SizedBox(height: 10),
              CustomTextField(
                textInputType: TextInputType.number,
                onChange: (value) {
                  price = value;
                },
                hintText: 'Enter Price',
                isPassword: false,
                label: 'Price',
              ),
              SizedBox(height: 10),
              CustomTextField(
                textInputType: TextInputType.url,
                onChange: (value) {
                  img = value;
                },
                hintText: 'Enter Image',
                isPassword: false,
                label: 'Image',
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  UpdateProductService().updateProduct(
                      title: name!,
                      price: price!,
                      description: decs!,
                      image: img!,
                      category: product.category);
                },
                child: Text(
                  '    Update Product    ',
                  style: TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
