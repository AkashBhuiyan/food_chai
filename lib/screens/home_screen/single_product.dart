import 'package:flutter/material.dart';
import 'package:food_chai/screens/product_overview/product_overview.dart';
import 'package:food_chai/widgets/count.dart';

import '../../config/colors.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;

  final String productName;
  final int productPrice;
  final String productId;

  final Function onTap;

  SingleProduct({
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 230,
            width: 165,
            decoration: BoxDecoration(
              color: Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage:
                              productImage,
                          productName: productName,
                          productPrice: productPrice,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(
                      productImage,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$productPrice\ Tk 500 Gram',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 5),
                                height: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
// Quantity

                                    Expanded(
                                        child: Text(
                                      '50 Gram',
                                      style: TextStyle(fontSize: 10),
                                    )),

// Arrow

                                    Center(
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 19,
                                        color: Colors.brown,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

//This Is Second Rectangular Container

                            SizedBox(
                              width: 5,
                            ),

                            Count(
                              productId: productId,
                              productName: productName,
                              productImage: productImage,
                              productPrice: productPrice,
                              productQuantity: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
