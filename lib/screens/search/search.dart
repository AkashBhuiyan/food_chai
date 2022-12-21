import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Search',
        ),
      ),
    );
  }
}
