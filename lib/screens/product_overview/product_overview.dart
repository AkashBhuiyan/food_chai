import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text("Product Overview",
        ),
      ),
    );
  }
}
