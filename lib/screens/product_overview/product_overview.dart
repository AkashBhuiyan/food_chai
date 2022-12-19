import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';





  /*Widget bonntonNavigatorBar(
      {Color iconColor,
      Color backgroundColor,
      Color color,
      String title,
      IconData iconData}) {
    return Expanded(child: Container());
  }*/

class ProductOverView extends StatefulWidget {
  const ProductOverView({Key? key}) : super(key: key);

  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

