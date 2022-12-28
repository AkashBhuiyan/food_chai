import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_chai/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> vegetableProductList = [];
  late ProductModel productModel;

  fetchVegetablesProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("VegetablesProduct").get();

    value.docs.forEach(
      (element) {
        productModel = ProductModel(
          productImage: element.get("productImage"),
          productName: element.get("productName"),
          productPrice: element.get("productPrice"),
        );
        newList.add(productModel);
      },
    );
    vegetableProductList =  newList;
    notifyListeners();
  }

  List<ProductModel> get getVegetablesProductDataList {
    return vegetableProductList;
  }
}
