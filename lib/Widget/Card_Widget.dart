import 'package:flutter/material.dart';
import 'package:storeapp/Models/Product_Model.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'UpdatePage', arguments: productModel);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 180,
              height: 110,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.title.substring(0, 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r'$' '${productModel.price.toString()}'),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: -30,
              child: Image.network(
                productModel.image,
                height: 90,
                width: 90,
              ),
            )
          ],
        ),
      ),
    );
  }
}
