import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/providers/review_cart_provider.dart';
import 'package:provider/provider.dart';

class Count extends StatefulWidget {
  late String productName;
  late String productImage;
  late String productId;
  late int productQuantity;
  late int productPrice;

  Count({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.productQuantity,
    required this.productPrice,
  });

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  late int count = 1;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Container(
        height: 25,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isTrue == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (count == 1) {
                        setState(() {
                          isTrue = false;
                        });
                      }
                      if (count > 1) {
                        setState(() {
                          count--;
                        });
                      }
                    },
                    child: Icon(
                      Icons.remove,
                      size: 15,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    "$count",
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: 15,
                      color: Color(0xffd0b84c),
                    ),
                  ),
                ],
              )
            : Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isTrue = true;
                    });
                    reviewCartProvider.addReviewCartData(
                        cartId: widget.productId,
                        cartName: widget.productName,
                        cartImage: widget.productImage,
                        cartPrice: widget.productPrice,
                        cartQuantity: count);
                  },
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ));
  }
}
