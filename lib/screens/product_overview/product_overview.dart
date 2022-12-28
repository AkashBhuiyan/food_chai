import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';

enum SinginCharacter { fill, outline }

class ProductOverView extends StatefulWidget {

  final String productName;
  final String productImage;
  final int productPrice;

  const ProductOverView({required this.productImage, required this.productName, required this.productPrice});
  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  SinginCharacter _signin_character = SinginCharacter.fill;

  Widget bottomNavigatorBar(
      {required Color iconColor,
      required Color backgroundColor,
      required Color color,
      required String title,
      required IconData iconData}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
            iconColor: Colors.grey,
            backgroundColor: textColor,
            color: Colors.white70,
            title: "Add To WishList",
            iconData: Icons.favorite_outline,
          ),
          bottomNavigatorBar(
            iconColor: Colors.black87,
            backgroundColor: primaryColor,
            color: textColor,
            title: "Go To Cart",
            iconData: Icons.add_shopping_cart,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(widget.productName??""),
                      subtitle: Text("${widget.productPrice} Tk"),
                    ),
                    Container(
                      height: 250,
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        widget.productImage??"",
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Available Option",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 10, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green[700],
                              ),
                              Radio(
                                value: SinginCharacter.fill,
                                groupValue: _signin_character,
                                activeColor: Colors.green[700],
                                onChanged: (value) {
                                  setState(() {
                                    _signin_character = value!;
                                  });
                                },
                              ),
                              Text("50Tk"),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(

                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 17,
                                  color: primaryColor,
                                ),
                                Text(
                                  'ADD',
                                  style: TextStyle(color: primaryColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textAlign: TextAlign.left,
                          "About This Product",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Vegetables are usually classified on the basis of the part of the plant that is used for food. The root vegetables include beets, carrots, radishes, sweet potatoes, and turnips. Stem vegetables include asparagus and kohlrabi. Among the edible tubers, or underground stems, are potatoes.",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
