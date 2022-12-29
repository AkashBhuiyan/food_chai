import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/widgets/single_item.dart';

import '../../models/product_model.dart';

enum SinginCharacter { lowToHigh, highToLow, alphabetically }

class Search extends StatefulWidget {
  late final List<ProductModel> search;

  Search({required this.search});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SinginCharacter _character = SinginCharacter.alphabetically;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Search',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Items'),
          ),
          Container(
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: "Search for item in the store",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: widget.search.map((data) {
              return SingleItem(
                isBool: false,
                productImage: data.productImage,
                productName: data.productName,
                productPrice: data.productPrice,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
