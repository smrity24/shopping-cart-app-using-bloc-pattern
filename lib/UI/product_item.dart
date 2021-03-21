import 'dart:ui';

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key key,
    this.productImage,
    this.title,
    this.price,
    this.press,
    this.addToCart,
  }) : super(key: key);
  final String productImage, title;
  final double price;
  final Function press;
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: press,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 240,
              width: 156,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 30),
                      blurRadius: 60,
                      color: Color(0xFF393939).withOpacity(.1))
                ],
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: press,
                      child: Container(),
                    ),
                  ],
                ),
              ),
              // ),
            ),
            Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/shape1.png',
                  height: 99,
                )),
            Positioned(
                bottom: 25,
                right: -1,
                child: Image.asset(
                  'assets/images/shape2.png',
                  height: 66,
                )),
            Positioned(
              top: 30,
              right: 5,
              child: Image.network(
                productImage,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 70,
              right: 20,
              child: FlatButton(
                  color: Color(0xFF845EC2),
                  onPressed: addToCart,
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Positioned(
              top: 30,
              right: 5,
              child: Image.network(
                productImage,
                height: 80,
              ),
            ),
            Positioned(
              top: 110,
              right: 50,
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 130,
              right: 50,
              child: Text(
                '\$ ${price}',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
